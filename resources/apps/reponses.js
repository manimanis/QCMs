const app_rep = new Vue({
  el: '#reponses',
  data: {
    classes: [],
    qcmsTitles: [],
    dates: [],
    answers: [],
    qcm: {},
    visibleAnswers: [],
    sortColumns: [],
    myCurClasse: -1,
    myCurQcm: -1,
    myCurDateDeb: -1,
    myCurDateFin: -1,
    showStatistics: false,
    badAnswersCount: []
  },
  computed: {
    curClasse: {
      get: function () { return this.myCurClasse; },
      set: function (value) {
        this.myCurClasse = value;
        if (this.myCurClasse >= 0 && this.myCurClasse < this.classes.length) {
          this.fetchQcmsTitles(this.classes[this.myCurClasse]);
        }
      }
    },
    curQcm: {
      get: function () { return this.myCurQcm; },
      set: function (value) {
        this.myCurQcm = value;
        if (this.myCurQcm >= 0 && this.myCurQcm < this.qcmsTitles.length) {
          this.fetchAnswers(this.qcmsTitles[this.myCurQcm].id);
        }
      }
    },
    curDateDeb: {
      get: function () { return this.myCurDateDeb; },
      set: function (value) {
        this.myCurDateDeb = value;
        if (this.myCurDateDeb != -1) {
          if (this.myCurDateDeb > this.myCurDateFin) {
            this.curDateFin = this.myCurDateDeb;
          }
          this.filterAnswers();
        }
      }
    },
    curDateFin: {
      get: function () { return this.myCurDateFin; },
      set: function (value) {
        this.myCurDateFin = value;
        if (this.myCurDateFin != -1) {
          if (this.myCurDateDeb > this.myCurDateFin) {
            this.curDateDeb = this.myCurDateFin;
          }
          this.filterAnswers();
        }
      }
    }
  },
  mounted: function () {
    this.curClasse = -1;
    this.fetchClasses();
  },
  methods: {
    fetchClasses: function () {
      return fetch(`adminindex.php?op=classes`)
        .then(response => response.json())
        .then(data => {
          if (data['isok']) {
            this.classes = data['classes'];
            this.curClasse = -1;
            this.curQcm = -1;
            this.curDateDeb = -1;
            this.curDateFin = -1;
          }
        });
    },
    fetchQcmsTitles: function (classe) {
      return fetch(`adminindex.php?op=qcmsTitles&classe=${classe}`)
        .then(response => response.json())
        .then(data => {
          if (data['isok']) {
            this.qcmsTitles = data['qcmsTitles'];
            this.curQcm = -1;
            this.curDateDeb = -1;
            this.curDateFin = -1;
          }
        });
    },
    fetchAnswers: function (id) {
      return fetch(`adminindex.php?op=qcmsAnswers&id=${id}`)
        .then(response => response.json())
        .then(data => {
          if (data['isok']) {
            this.qcm = data['qcm'];
            this.qcm.reponses = this.splitAnswers(this.qcm.reponses);

            this.answers = data['qcmsAnswers'];
            this.answers.forEach((ans, idx) => {
              ans.index = idx + 1;
              ans.reponse = this.splitAnswers(ans.reponse);
              ans.is_correct = ans.reponse.map(rep => this.qcm.reponses.includes(rep));
              ans.good_answers = ans.is_correct.reduce((pv, cv) => pv + +cv, 0);
              ans.bad_answers = ans.is_correct.reduce((pv, cv) => pv + +!cv, 0);
              ans.mark = ans.good_answers - ans.bad_answers;
            });

            this.dates = this.answers.map(answer => answer.date_rep.substr(0, 10));
            this.dates = this.dates.filter((date, index) => this.dates.indexOf(date) == index);
            this.dates.sort();
            this.curDateDeb = Math.min(0, this.dates.length - 1);
            this.curDateFin = this.dates.length - 1;
            this.filterAnswers();
          }
        });
    },
    filterAnswers: function () {
      this.visibleAnswers = this.answers
        .filter(ans => {
          const dt = ans.date_rep.substr(0, 10);
          return dt >= this.dates[this.curDateDeb] && dt <= this.dates[this.curDateFin];
        })
    },
    sortAnswers: function (column, add) {
      add = !!add;
      let idx = this.sortColumns.findIndex(col => col.column == column);
      let col;
      if (idx == -1) {
        col = {
          column: column,
          direction: 0
        };
        this.sortColumns = [col];
      } else {
        col = this.sortColumns[idx];
      }
      if (col.direction == 0) col.direction = 1;
      else if (col.direction == 1) col.direction = -1;
      else col.direction = 0;

      this.visibleAnswers.sort((aa, ab) => {
        for (let col of this.sortColumns) {
          if (aa[col.column] > ab[col.column]) return col.direction;
          if (aa[col.column] < ab[col.column]) return -col.direction;
        }
        return 0;
      });
      this.$forceUpdate();
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
        let ans = "";
        while (i < n && answers[i] >= "0" && answers[i] <= "9") {
          ans += answers[i];
          i++;
        }
        while (i < n && answers[i] >= "A" && answers[i] <= "Z") {
          ans += answers[i];
          i++;
        }
        newAns.push(ans);
      }
      return newAns;
    },
    showStatisticsClicked: function () {
      this.showStatistics = !this.showStatistics;
      this.badAnswersCount = this.qcm.reponses.map((_, idx) => { return { question: idx+1, count: 0 }; });
      for (let answer of this.visibleAnswers) {
        for (let i = 0; i < answer.is_correct.length; i++) {
          this.badAnswersCount[i].count += !answer.is_correct[i];
        }
      }
      this.badAnswersCount.sort((a, b) => {
        if (a.count != b.count) return b.count - a.count;
        return a.question - b.question;
      });
    }
  }
});