const app_rep = new Vue({
  el: '#liste-qcm',
  data: {
    params: {},
    correctAnswers: [],
    studentAnswers: [],
    qcm: {}
  },
  mounted: function () {
    this.readParams();
    this.fetchReponse();
  },
  methods: {
    readParams: function () {
      this.params = {};
      if (window.location.search != "") {
        window.location.search.substring(1).split("&").forEach(tok => {
          const t = tok.split("=");
          this.params[t[0]] = t[1];
        });
      }
    },
    fetchReponse: function () {
      return fetch(`adminindex.php?op=single_qcm&ans_id=${this.params.ans_id}`)
        .then(response => response.json())
        .then(data => {
          if (data['isok']) {
            console.log(data);
            this.qcm = data.qcm;
            this.qcm.questions = JSON.parse(this.qcm.questions);

            const correctAnswers = this.splitAnswers(data.qcm.reponses);
            const studentAnswers = this.splitAnswers(data.answer.reponse);
            this.qcm.questions.forEach((question, idx) => {
              const numQuestion = String(idx + 1);
              question.correctAnswers = correctAnswers
                .filter((answer) => answer.numQ == numQuestion)
                .map((answer) => answer.ansQ);
              question.studentAnswers = studentAnswers
                .filter((answer) => answer.numQ == numQuestion)
                .map((answer) => answer.ansQ);
              if (question.is_single) {
                question.correctAnswers = question.correctAnswers[0];
                question.studentAnswers = question.studentAnswers[0];
              }
            });
          }
        });
    },
    /**
     * 
     * @param {string} answers 
     * @returns an array of reponses
     */
    splitAnswers: function (answers) {
      const newAns = [];
      let i = 0,
        n = answers.length;
      while (i < n) {
        let numQ = "", ansQ = "";
        while (i < n && answers[i] >= "0" && answers[i] <= "9") {
          numQ += answers[i];
          i++;
        }
        while (i < n && answers[i] >= "A" && answers[i] <= "Z") {
          ansQ += answers[i];
          i++;
        }
        newAns.push({ numQ: numQ, ansQ: ansQ });
      }
      return newAns;
    },
    questionProposition: function (questionObject, propIndex) {
      const propChar = String.fromCharCode(65 + propIndex);
      let suffix = "";
      if (questionObject.is_single) {
        if (propChar == questionObject.correctAnswers) {
          suffix = "✓";
        }
      } else {
        if (questionObject.correctAnswers.includes(propChar)) {
          suffix = "✓";
        }
      }
      return propChar + ' - ' + questionObject.propositions[propIndex] + suffix;
    },
    isCorrectAnswer: function (questionObject) {
      if (questionObject.is_single) {
        if (questionObject.correctAnswers == questionObject.studentAnswers) {
          return true;
        }
      } else {
        let goodAnswers = 0;
        questionObject.studentAnswers.forEach(sa => {
          goodAnswers += questionObject.correctAnswers.includes(sa);
        });
        return goodAnswers == questionObject.correctAnswers.length;
      }
      return false;
    }
  }
});