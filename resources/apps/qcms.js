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
        is_single: !!obj.single || false,
        propositions: obj.propositions?.map(prop => prop) || Array(4).fill(""),
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
    onInsertQuestion: function (idx) {
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