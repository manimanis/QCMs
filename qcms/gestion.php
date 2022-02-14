<div id="liste-qcm">
  <h2>Liste des QCMs</h2>

  <div class="my-2">
    <label for="classe">Classe</label>
    <select name="classe" id="classe" class="form-control" v-model="selectedClasse" v-on:change="onSelectedClasseChanged()">
      <option v-for="classe in classes">{{classe}}</option>
    </select>
  </div>

  <div class="my-2" v-if="selectedClasse != '' && mode == 'liste'">
    <table class="table table-sm table-bordered table-striped border-dark align-middle">
      <tr>
        <th width="60">id</th>
        <th>Titre</th>
        <th width="60">NBQ</th>
        <th width="100">&nbsp;</th>
      </tr>
      <tr v-if="qcms.length > 0" v-for="qcm, idx in qcms">
        <td>{{qcm.id}}</td>
        <td>{{qcm.titre}}</td>
        <td>{{qcm.nbr_questions}}</td>
        <td>&nbsp;</td>
      </tr>
      <tr v-if="qcms.length == 0">
        <td colspan="6">Aucun QCM pour cette classe</td>
      </tr>
    </table>
    <div class="my-2">
      <button class="btn btn-primary" v-on:click="onAjouterClicked()">Ajouter</button>
    </div>
  </div>

  <div class="my-2" v-if="mode == 'newQcm'">
    {{selectedQcm}}
    <div class="my-2">
      <label for="classe">Classe</label>
      <input type="text" id="classe" class="form-control" v-model="selectedQcm.classe">
    </div>
    <div class="my-2">
      <label for="titre">Titre</label>
      <input type="text" id="titre" class="form-control" v-model="selectedQcm.titre">
    </div>
    <div class="my-2">
      <label for="description">Description</label>
      <textarea id="description" class="form-control" v-model="selectedQcm.description"></textarea>
    </div>
    <div class="my-2" v-for="question, idx in selectedQcm.questions">
      <div class="row">
        <div class="col-10">
          <h4>Question {{idx+1}} / {{selectedQcm.questions.length}}</h4>
        </div>
        <div class="text-end col-2">
          <a href="#" title="Dupliquer la question" v-on:click.prevent="onDuplicateQuestion(idx)"><i class="fa-solid fa-copy"></i></a>
          <a href="#" title="Insérer une question avant" v-on:click.prevent="onInsertQuestion(idx)"><i class="fa-solid fa-square-plus"></i></a>
          <a href="#" title="Supprimer" v-on:click.prevent="onRemoveQuestion(idx)"><i class="fa-solid fa-trash-can"></i></a>
        </div>
      </div>
      <div class="my-2">
        <label v-bind:for="'q-enonce-'+idx">Enoncé</label>
        <textarea v-bind:id="'q-enonce-'+idx" class="form-control" cols="30" rows="3" v-model="question.enonce"></textarea>
      </div>
      <div class="my-2">
        <label><input type="checkbox" v-model="question.is_single"> {{question.is_single ? "Une seule réponse" : "Plusieurs réponses"}}</label>
      </div>
      <div class="my-2" v-for="proposition, idx2 in question.propositions">
        <label v-bind:for="'prop-'+idx+'-'+idx2">Proposition {{String.fromCharCode(65+idx2)}}</label> -
        <label v-if="question.is_single"><input type="radio" v-bind:name="'prop'+idx" v-bind:value="String.fromCharCode(65+idx2)" v-model="question.single_answer"> {{question.single_answer == String.fromCharCode(65+idx2) ? 'Correcte' : 'Incorrecte'}}</label>
        <label v-if="!question.is_single"><input type="checkbox" v-bind:name="'prop'+idx+'_'+idx2" v-bind:value="String.fromCharCode(65+idx2)" v-model="question.answers"> {{question.answers.includes(String.fromCharCode(65+idx2)) ? 'Correcte' : 'Incorrecte'}}</label>

        <textarea v-bind:id="'prop-'+idx+'-'+idx2" class="form-control" cols="30" rows="1" v-model="question.propositions[idx2]"></textarea>
      </div>
    </div>
    <div class="my-2">
      <button class="btn btn-secondary w-100" v-on:click="onIncrementQuestions()"><i class="fa-solid fa-circle-question"></i> Nouvelle Question</button>
    </div>
  </div>
</div>
<script src="resources/js/vue.min.js"></script>
<script src="resources/apps/qcms.js"></script>