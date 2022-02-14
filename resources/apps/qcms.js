const app = new Vue({
  el: '#liste-qcm',
  data: {
    classes: [],
    selectedClasse: '',
    qcms: [],
    mode: 'liste',
    selectedQcm: {}
  },
  mounted: function() {
    this.fetchClasses();
  },
  methods: {
    fetchClasses: function() {
      return fetch(`adminindex.php?op=classes`)
        .then(response => response.json())
        .then(data => {
          if (data['isok']) {
            this.classes = data['classes'];
          }
        });
    },
    fetchQcmbyClasse: function(classe) {
      return fetch(`adminindex.php?op=qcms&classe=${classe}`)
        .then(response => response.json())
        .then(data => {
          if (data['isok']) {
            this.qcms = data['qcms'];
          }
        });
    },
    postNewQcm: function(qcmDocument) {
      const data = new FormData();
      data.append("classe", qcmDocument.classe);
      data.append("titre", qcmDocument.titre);
      data.append("description", qcmDocument.description);
      data.append("nbr_questions", qcmDocument.nbr_questions);
      data.append("questions", JSON.stringify(qcmDocument.questions));
      data.append("reponses", qcmDocument.reponses);
      data.append("op", "insertQcm");
      return fetch(`adminindex.php`, {
          method: 'post',
          body: data,
        })
        .then(response => response.json())
        .then(data => {
          if (data['isok']) {
            qcmDocument.id = data.id;
            return qcmDocument;
          }
          return null;
        });
    },
    createQcmDocument: function(rawObject) {
      const doc = {
        "id": rawObject.id,
        "classe": rawObject.classe,
        "titre": rawObject.titre,
        "description": rawObject.description,
        "nbr_questions": rawObject.questions.length,
        "questions": rawObject.questions.map(question => {
          return {
            "enonce": question.enonce,
            "is_single": question.is_single,
            "propositions": [...question.propositions]
          };
        }),
        "reponses": rawObject.questions
          .reduce((pv, question, idx) => pv + ((question.is_single) ? ((idx + 1) + question.single_answer) : (question.answers.reduce((pv, cv) => pv + (idx + 1) + cv, ""))), "")
      };
      return doc;
    },
    createMockupQcm: function() {
      return {
        "id": -1,
        "classe": "2TI",
        "titre": "Titre",
        "description": "Description",
        "nbr_questions": 1,
        "questions": [{
          "enonce": "Question 1 / 1",
          "is_single": false,
          "propositions": [
            "Proposition A",
            "Proposition B"
          ],
          "answers": ["A","B"],
          "single_answer": ""
        }],
        "reponses": "1A1B"
      };
    },
    createNewQcm: function(obj) {
      const newQcm = {
        classe: obj.classe || "",
        description: obj.description || "",
        id: +obj.id || -1,
        nbr_questions: +obj.nbr_questions || 0,
        questions: obj.questions?.map(question => this.createQuestion(question)) || [],
        reponses: obj.reponses?.map(reponse => reponse) || [],
        titre: obj.titre || ""
      };
      return newQcm;
    },
    createQuestion: function(obj) {
      const newQ = {
        enonce: obj.enonce || "",
        is_single: !!obj.is_single || false,
        propositions: obj.propositions?.map(prop => prop) || Array(2).fill(""),
        answers: obj.answers?.map(ans => ans) || [],
        single_answer: obj.single_answer || ""
      };
      return newQ;
    },
    onSelectedClasseChanged: function() {
      this.fetchQcmbyClasse(this.selectedClasse);
    },
    onAjouterClicked: function() {
      this.mode = "newQcm";
      this.selectedQcm = this.createNewQcm({
        classe: this.selectedClasse
      });
      //this.selectedQcm = this.createMockupQcm();
    },
    onCancelAjouter: function() {
      this.mode = "liste";
    },
    onApplyAjouter: function() {
      const newDoc = this.createQcmDocument(this.selectedQcm);
      this.postNewQcm(newDoc)
        .then(qcmDocument => {
          this.qcms.push(qcmDocument);
          this.onCancelAjouter();
        })
    },
    onIncrementQuestions: function() {
      const newCount = this.selectedQcm.nbr_questions + 1;
      if (newCount >= 0 && newCount < 50) {
        this.selectedQcm.nbr_questions = newCount;
        this.selectedQcm.questions.push(this.createQuestion({}));
      }
    },
    onRemoveQuestion: function(idx) {
      if (!confirm("Voulez-vous supprimer cette question ?")) {
        return;
      }
      this.selectedQcm.questions.splice(idx, 1);
      this.selectedQcm.nbr_questions = this.selectedQcm.questions.length;
      this.$forceUpdate();
    },
    onInsertQuestion: function(idx) {
      const newCount = this.selectedQcm.nbr_questions + 1;
      if (newCount >= 0 && newCount < 50) {
        this.selectedQcm.nbr_questions = newCount;
        this.selectedQcm.questions.splice(idx, 0, this.createQuestion({}));
      }
    },
    onDuplicateQuestion: function(idx) {
      const newCount = this.selectedQcm.nbr_questions + 1;
      if (newCount >= 0 && newCount < 50) {
        this.selectedQcm.nbr_questions = newCount;
        this.selectedQcm.questions.splice(idx, 0, this.createQuestion(this.selectedQcm.questions[idx]));
      }
    },
    onInsertProposition: function(idx) {
      const newCount = this.selectedQcm.questions[idx].propositions.length + 1;
      if (newCount <= 10) {
        this.selectedQcm.questions[idx].propositions.push("");
      }
    },
    onDuplicateProposition: function(idx, idx2) {
      const propositions = this.selectedQcm.questions[idx].propositions;
      const newCount = propositions.length + 1;
      if (newCount <= 10) {
        propositions.splice(idx2, 0, propositions[idx2]);
      }
    },
    onRemoveProposition: function(idx, idx2) {
      if (!confirm("Voulez-vous supprimer cette proposition ?")) {
        return;
      }
      const propositions = this.selectedQcm.questions[idx].propositions;
      propositions.splice(idx2, 1);
    }
  }
});
/*
<div class="question">
    <div class="enonce">
      <p><strong>Qu'affiche le programme suivant (le "/" indique un retour à la ligne)</strong></p>
      <pre><code class="python">for k in range(3):
    print(k)</code></pre>
    </div>
    <div class="propositions" data-issingle="true">
      <div class="proposition">0 / 1 / 2</div>
      <div class="proposition">0 / 3 / 6</div>
      <div class="proposition">1 / 2 / 3</div>
      <div class="proposition">0 / 1 / 2 / 3</div>
    </div>
  </div>
*/