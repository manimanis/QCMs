const app = new Vue({
  el: '#liste-eleves',
  data: {
    mode: 'liste',
    classes: [],
    myCurClasse: -1,
    eleves: [],
    selectedEleve: {},
    selectedEleveIdx: -1,
    selectedClasse: "",
    selectedEleves: ""
  },
  computed: {
    curClasse: {
      get: function() { return this.myCurClasse; },
      set: function(value) {
        this.myCurClasse = +value;
        if (this.myCurClasse >= 0 && this.myCurClasse < this.classes.length) {
          this.fetchEleves(this.classes[this.myCurClasse]);
        }
      }
    }
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
    fetchEleves: function(classe) {
      return fetch(`adminindex.php?op=eleves&classe=${classe}`)
        .then(response => response.json())
        .then(data => {
          if (data['isok']) {
            this.eleves = data['eleves'];
          }
        });
    },
    postEleve: function(eleveObj, op) {
      const data = new FormData();
      data.append("id", eleveObj.id);
      data.append("classe", eleveObj.classe);
      data.append("nom_prenom", eleveObj.nom_prenom);
      data.append("op", op);
      return fetch(`adminindex.php`, {
          method: 'post',
          body: data,
        })
        .then(response => response.json())
        .then(data => {
          if (data['isok']) {
            if (op == 'insertEleve') {
              eleveObj.id = data.id;
            }
            return eleveObj;
          }
          return null;
        });
    },
    removeEleve: function(eleveObj) {
      const data = new FormData();
      data.append("id", eleveObj.id);
      data.append("op", "deleteEleve");
      return fetch(`adminindex.php`, {
          method: 'post',
          body: data,
        })
        .then(response => response.json())
        .then(data => {
          if (data['isok']) {
            return eleveObj.id;
          }
          return -1;
        });
    },
    insertClasse: function(classe, eleves) {
      const data = new FormData();
      data.append("classe", classe);
      data.append("eleves", eleves);
      data.append("op", "insertClasse");
      return fetch(`adminindex.php`, {
          method: 'post',
          body: data,
        })
        .then(response => response.json())
        .then(data => {
          if (data['isok']) {
            const ids = data.ids;
            const elevesNames = eleves.split('\n');
            const elevesArr = ids.map((id, idx) => {
              return {
                id: +id,
                classe: classe,
                nom_prenom: elevesNames[idx]
              };
            });
            return elevesArr;
          }
          return [];
        });
    },
    createNewEleve: function(eleve) {
      return {
        id: +eleve.id || -1,
        classe: eleve.classe || this.classes[this.myCurClasse],
        nom_prenom: eleve.nom_prenom || ""
      };
    },
    onEditEleve: function(idxEleve) {
      this.selectedEleve = this.createNewEleve(this.eleves[idxEleve]);
      this.selectedEleveIdx = idxEleve;
      this.mode = "editEleve";
    },
    onApplyEdit: function() {
      this.postEleve(this.selectedEleve, "updateEleve")
        .then(eleObj => {
          this.eleves[this.selectedEleveIdx] = eleObj;
          this.onCancelEdit()
        });
    },
    onCancelEdit: function() {
      this.mode = 'liste';
    },
    onNewEleve: function() {
      this.selectedEleve = this.createNewEleve({});
      this.mode = "newEleve";
    },
    onApplyInsert: function() {
      this.postEleve(this.selectedEleve, "insertEleve")
        .then(eleObj => {
          this.eleves.push(eleObj);
          this.onCancelEdit()
        });
    },
    onDeleteEleve: function(idxEleve) {
      this.selectedEleve = this.eleves[idxEleve];
      this.selectedEleveIdx = idxEleve;
      this.mode = "deleteEleve";
    },
    onApplyDelete: function() {
      if (!confirm("Ceci est un dernier avertissement. Voulez-vous supprimer définitivement cet élève ?")) {
        return;
      }
      this.removeEleve(this.selectedEleve)
        .then(id => {
          this.eleves.splice(this.selectedEleveIdx, 1);
          this.onCancelEdit()
        });
    },
    onNewClasse: function() {
      this.selectedClasse = (this.myCurClasse >= 0 && this.myCurClasse < this.classes.length) ? this.classes[this.myCurClasse] : "";
      this.selectedEleves = "";
      this.mode = 'newClasse';
    },
    onApplyInsertClasse: function() {
      this.insertClasse(this.selectedClasse, this.selectedEleves)
        .then(elevesArr => {
          elevesArr.forEach(eleve => this.eleves.push(eleve));
          this.onCancelInsertClasse();
        });
    },
    onCancelInsertClasse: function() {
      this.mode = 'liste';
    }
  }
});