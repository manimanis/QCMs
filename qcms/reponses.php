<div id="reponses">
  <div class="row">
    <div class="col-3">
      <label for="classes">Classes</label>
      <select name="classe" id="classes" class="form-control" v-model="curClasse">
        <option v-for="classe, idx in classes" v-bind:value="idx">{{classe}}</option>
      </select>
    </div>
    <div class="col-3" v-if="curClasse != -1 && qcmsTitles.length > 0">
      <label for="qcm_ids">Titre</label>
      <select name="qcm_id" id="qcm_ids" class="form-control" v-model="curQcm">
        <option v-for="qcm, idx in qcmsTitles" v-bind:value="idx">{{qcm.titre}}</option>
      </select>
    </div>
    <div class="col-3" v-if="curDateDeb != -1">
      <label for="start-date">Date début</label>
      <select name="start_date" id="start-date" class="form-control" v-model="curDateDeb">
        <option v-for="date, idx in dates" v-bind:value="idx">{{date}}</option>
      </select>
    </div>
    <div class="col-3" v-if="curDateFin != -1">
      <label for="end-date">Date finale</label>
      <select name="end_date" id="end-date" class="form-control" v-model="curDateFin">
        <option v-for="date, idx in dates" v-bind:value="idx">{{date}}</option>
      </select>
    </div>
  </div>

  <div class="my-2" v-if="curQcm != -1">
    <h2>{{qcm.titre}}</h2>

    <p><strong>Description :</strong> {{qcm.description}}</p>
    <p><strong>Classe :</strong> {{classes[curClasse]}}</p>
    <p v-if="dates.length > 0"><strong>Date :</strong> {{dates[curDateDeb]}} &rarr; {{dates[curDateFin]}}</p>
    <p><strong>Réponses :</strong>
      <span v-for="ans, idx in qcm.correctAnswers">{{idx+1}}
        <b v-for="letter in ans">{{letter}}</b>/</span>
    </p>
    <!--<p><strong>Réponses :</strong> <span v-for="ans in qcm.reponses">{{ans}}/</span></p>-->

    <table class="my-2 table table-sm table-bordered table-striped border-dark align-middle">
      <tbody>
        <tr>
          <th v-on:click="sortAnswers('index')">&nbsp;</th>
          <th v-on:click="sortAnswers('nom_prenom')">Nom &amp; Prénom</th>
          <th width="100" v-on:click="sortAnswers('date_rep')">Date</th>
          <th width="80" v-on:click="sortAnswers('ip_addr')">Adr. IP</th>
          <th v-on:click="sortAnswers('reponse')">Réponse</th>
          <th width="140" v-on:click="sortAnswers('mark')">Note</th>
          <th>&nbsp;</th>
        </tr>
        <tr v-for="ans, idx in visibleAnswers">
          <td class="text-center"><small>#{{ans.index}}</small></td>
          <td>{{ans.nom_prenom}}</td>
          <td class="text-center"><small>{{ans.date_rep}}</small></td>
          <td class="text-center"><small>{{ans.ip_addr}}</small></td>
          <td>
            <!--
            <small>
              <span v-for="rep, idx in ans.reponse">
                <span class="text-success" v-if="ans.is_correct[idx]">{{rep}}</span>
                <span class="text-danger" v-if="!ans.is_correct[idx]" v-if="!ans.is_correct[idx]">
                <del>{{rep}}</del> 
                </span> / </span> 
            </small>
            -->
            <small>
              <span v-for="rep, idx in ans.studentAnswers">
                {{idx+1}}
                <span class="text-danger" v-if="!ans.is_correct[idx]" v-if="!ans.is_correct[idx]">
                  <del>{{rep.join("")}}</del>
                </span> <span class="text-success">{{qcm.correctAnswers[idx].join("")}}</span>
                 / </span>
            </small>
          </td>
          <td>
            {{ans.nbrCorrectAnswers}} / {{qcm.nbr_questions}} <br>
            <small>{{ans.good_answers}}-{{ans.bad_answers}}={{ans.mark}}</small>
          </td>
          <td><a v-bind:href="'admin.php?op=reponse_eleve&ans_id=' + ans.id" target="_blank" rel="noopener noreferrer">Réponses</a></td>
        </tr>
        <tr v-if="answers.length == 0">
          <td colspan="6">Aucune réponse à afficher.</td>
        </tr>
      </tbody>
    </table>

    <div class="my-2"><button type="button" class="btn btn-secondary" v-on:click="showStatisticsClicked()">{{showStatistics ? 'Cacher les statistiques' : 'Afficher les statistiques'}}</button></div>
    <div class="my-2" v-if="showStatistics">
      <div class="my-1" v-for="answer, idx in badAnswersCount">{{idx+1}} -
        <strong>Question :</strong> {{answer.question}} -
        <strong>Réponses fausses :</strong> {{answer.count}} / {{visibleAnswers.length}}
      </div>
    </div>
  </div>
</div>
<script src="resources/js/vue.min.js"></script>
<script src="resources/apps/reponses.js"></script>