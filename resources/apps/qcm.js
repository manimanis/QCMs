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
    nom_prenom: "", // "Mohamed Anis MANI",
    errors: [],
    error_message: "",
    is_sent: false,
    loaded: false
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

      const data = new FormData();
      data.append("qcm_id", this.id);
      data.append("nom_prenom", this.nom_prenom);
      data.append("questions_count", this.rep_array.length);
      this.rep_array.forEach((rep, idx) => {
        if (Array.isArray(rep)) {
          data.append(`q${idx + 1}`, rep.join(""));
        } else {
          data.append(`q${idx + 1}`, rep);
        }
      });
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
          }
        })
        .catch(err => {
          this.is_sent = true;
          this.errors = [err];
          this.error_message = "Erreur : votre réponse n'a pas été envoyée.";
        });
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
          this.questions = JSON.parse(qcm.questions);
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
        });
    }
  }
});
