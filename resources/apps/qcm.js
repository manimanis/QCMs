const app = new Vue({
  el: "#qcm",
  data: {
    num_question: 0,
    nbr_questions: 0,
    questions: [],
    id: 0,
    titre: "",
    classe: "",
    description: "",
    _nbr_questions_vides: 0,
    rep_array: [],
    eleves: [],
    nbre_eleves: 1,
    nom_prenom: "", // "Mohamed Anis MANI",
    nom_prenom1: "",
    errors: [],
    error_message: "",
    is_sent: false,
    loaded: false,
    rendered: false,
    oneByOne: true
  },
  computed: {
    nbr_questions_vides: function () {
      this._nbr_questions_vides = 0;
      for (let rep of this.rep_array) {
        if (rep.length == 0) {
          this._nbr_questions_vides++;
        }
      }
      return this._nbr_questions_vides;
    }
  },
  updated: function () {
    const els = document.querySelectorAll('#qcm .enonce pre:not(.hljs) > code');
    for (el of els) {
      hljs.highlightBlock(el);
    }
  },
  mounted: function () {
    const urlParams = new URLSearchParams(document.location.search);
    if (urlParams.has('qcm_id')) {
      let qcm_id = +urlParams.get('qcm_id');
      if (!isNaN(qcm_id)) {
        this.loadQcmContent(qcm_id);
      }
    }
  },
  methods: {
    nextQuestion: function () {
      if (this.num_question < this.nbr_questions - 1) {
        this.gotoQuestion(this.num_question + 1);
      }
    },
    prevQuestion: function () {
      if (this.num_question > 0) {
        this.gotoQuestion(this.num_question - 1);
      }
    },
    gotoQuestion: function (num_question) {
      this.num_question = num_question;
      this.rendered = true;
    },
    resetForm: function () {
      this.rep_array = this.questions
        .map((question, idx) => {
          if (question.is_single) {
            return "";
          }
          return [];
        });
      this.nom_prenom = "";
    },
    submitAnswers: function () {
      if (this.nbr_questions_vides > 0) {
        alert("Soumission impossible vous devez répondre à toutes les questions !");
        return;
      }
      this.nom_prenom = this.nom_prenom.trim();
      if (this.nom_prenom == "") {
        alert("Soumission impossible vous devez indiquer votre nom & prénom !");
        return;
      }

      let noms_eleves = this.nom_prenom;
      if (this.nbre_eleves) {
        noms_eleves += " - " + this.nom_prenom1;
      }

      const data = new FormData();
      data.append("qcm_id", this.id);
      data.append("nom_prenom", noms_eleves);
      data.append("questions_count", this.rep_array.length);
      this.rep_array.forEach((rep, idx) => {
        const question = this.questions[idx];
        if (Array.isArray(rep)) {
          data.append(`q${question.num + 1}`, rep.join(""));
        } else {
          data.append(`q${question.num + 1}`, rep);
        }
      });
      const qcm = {
        qcm_id: this.id,
        nom_prenom: noms_eleves,
        questions_count: this.rep_array.length,
        rep_array: this.rep_array
      };
      this.errors = [];
      fetch("saveanswer.php", {
        method: 'post',
        body: data,
      })
        .then(response => response.json())
        .then(data => {
          this.is_sent = true;
          if (data['isok']) {
            this.error_message = "Votre réponse a été envoyée.";
            this.resetForm();
          } else {
            this.error_message = "Votre réponse n'a pas été envoyée.";
            this.errors = data['errors'];
            this.exportQcm(qcm);
          }
        })
        .catch(err => {
          this.is_sent = true;
          this.errors = [err];
          this.error_message = "Erreur : votre réponse n'a pas été envoyée.";
          this.exportQcm(qcm);
        });
    },
    exportQcm: function (qcm) {
      var dataStr = "data:text/json;charset=utf-8," + encodeURIComponent(JSON.stringify(qcm));
      var dlAnchorElem = document.getElementById('downloadAnchorElem');
      const date = new Date().toISOString()
        .replaceAll(':', '-')
        .replaceAll(' ', '_')
        .substring(0, 19);
      let nom_prenom = qcm.nom_prenom.split('')
        .filter(car => (car >= 'a' && car <= 'z') ||
          (car >= 'A' && car <= 'Z') || (car >= '0' && car <= '9') ||
          (car == ' '))
        .map(car => (car == ' ') ? '_' : car)
        .join('');
      dlAnchorElem.setAttribute("href", dataStr);
      dlAnchorElem.setAttribute("download", `qcm-${qcm.qcm_id}-${nom_prenom}-${date}.json`);
      dlAnchorElem.click();
      alert("Votre réponse a été prise en compte. Merci!");
    },
    loadQcm: function () {
      this.loadQcmContent(this.id);
    },
    loadQcmContent: function (qcm_id) {
      this.loaded = false;
      return fetch(`getqcmcontent.php?qcm_id=${qcm_id}`)
        .then(response => response.json())
        .then(data => {
          if (!data['isok']) {
            this.is_sent = true;
            this.errors = data.errors;
            this.error_message = "Erreur : Le QCM ne peut pas être chargé.";
          }
          const qcm = data.data['qcm'];
          this.questions = JSON.parse(qcm.questions).map((q, idx) => {
            const question = this.createQuestion(q);
            question.num = idx;
            return question;
          });
          //console.log(this.questions);
          this.shuffleQuestions();
          //console.log(this.questions);
          this.nbr_questions = this.questions.length;
          this.id = +qcm.id;
          this.classe = qcm.classe;
          this.titre = qcm.titre;
          this.description = qcm.description;
          this.rep_array = this.questions
            .map(question => {
              if (question.is_single) {
                return "";
              }
              return [];
            });
          this.eleves = data.data['eleves'];
          this.num_question = 0;
          this._nbr_questions_vides = 0;
          this.errors = [];
          this.error_message = "";
          this.is_sent = false;
          this.loaded = true;
          this.rendered = true;
        });
    },
    createQuestion: function (question) {
      return {
        num: +question.num || -1,
        enonce: question.enonce || "",
        is_single: !!question.is_single,
        propositions: question.propositions.slice() || []
      };
    },
    shuffleQuestions: function () {
      const n = this.questions.length;
      for (let i = n - 1; i >= n / 2; i--) {
        const j = Math.floor(Math.random() * (n + 1) / 2);
        const q1 = this.questions[i];
        const q2 = this.questions[j];
        this.questions[i] = q2;
        this.questions[j] = q1;
      }
      for (let question of this.questions) {
        this.shuffleProspositions(question);
      }
    },
    shuffleProspositions: function (question) {
      question.propositions = question.propositions.map((prop, idx) => {
        return {
          propNum: idx,
          proposition: prop
        };
      });
      const n = question.propositions.length;
      for (let i = n - 1; i >= n / 2; i--) {
        const j = Math.floor(Math.random() * (n + 1) / 2);
        const q1 = question.propositions[i];
        const q2 = question.propositions[j];
        question.propositions[i] = q2;
        question.propositions[j] = q1;
      }
    }
  }
});
