<div id="liste-qcm">

  <a id="downloadAnchorElem" style="display:none"></a>

  <div class="my-2" v-if="mode == 'liste'">
    <label for="classe">Classe</label>
    <select name="classe" id="classe" class="form-control" v-model="selectedClasse" v-on:change="onSelectedClasseChanged()">
      <option v-for="classe in classes">{{classe}}</option>
    </select>
  </div>

  <div class="my-2" v-if="selectedClasse != '' && mode == 'liste'">
    <h2>Liste des QCMs</h2>
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
        <td>
          <a href="#" title="Editer" v-on:click.prevent="onEditClicked(idx)"><i class="fa-solid fa-pen-to-square"></i></a>
          <a href="#" title="Dupliquer" v-on:click.prevent="onDuplicateClicked(idx)"><i class="fa-solid fa-copy"></i></a>
          <a href="#" title="Supprimer" v-on:click.prevent="onDeleteClicked(idx)"><i class="fa-solid fa-trash-can"></i></a>
          <a href="#" title="Exporter" v-on:click.prevent="onRawFormatClicked(idx)"><i class="fa-solid fa-file-export"></i></a>
        </td>
      </tr>
      <tr v-if="qcms.length == 0">
        <td colspan="4">Aucun QCM pour cette classe</td>
      </tr>
    </table>
    <div class="my-2">
      <button class="btn btn-primary" v-on:click="onAjouterClicked()"><i class="fa-solid fa-circle-plus"></i> Ajouter</button>
      <button class="btn btn-primary" v-on:click="onImporterClicked()"><i class="fa-solid fa-file-import"></i> Importer</button>
      <button class="btn btn-primary" v-on:click="onExporterToutClicked()"><i class="fa-solid fa-file-export"></i> Exporter Tout</button>
    </div>
  </div>

  <div class="my-2" v-if="mode == 'newQcm' || mode == 'editQcm'">
    <h2 v-if="mode == 'newQcm'">Nouveau QCM</h2>
    <h2 v-if="mode == 'editQcm'">Edition d'un QCM</h2>
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
    <div class="my-2 card" v-for="question, idx in selectedQcm.questions">
      <div class="card-body">
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

        <h5 class="card-title">Propositions</h5>
        <div class="my-2 card">
          <div class="card-body">
            <div v-for="proposition, idx2 in question.propositions">
              <div class="row">
                <div class="col-9">
                  <a href="#" title="Dupliquer la proposition" v-if="question.propositions.length < 10" v-on:click.prevent="onDuplicateProposition(idx, idx2)"><i class="fa-solid fa-copy"></i></a>
                  <label v-bind:for="'prop-'+idx+'-'+idx2">Proposition {{String.fromCharCode(65+idx2)}}</label> -
                  <label v-if="question.is_single"><input type="radio" v-bind:name="'prop'+idx" v-bind:value="String.fromCharCode(65+idx2)" v-model="question.single_answer"> {{question.single_answer == String.fromCharCode(65+idx2) ? 'Correcte' : 'Incorrecte'}}</label>
                  <label v-if="!question.is_single"><input type="checkbox" v-bind:name="'prop'+idx+'_'+idx2" v-bind:value="String.fromCharCode(65+idx2)" v-model="question.answers"> {{question.answers.includes(String.fromCharCode(65+idx2)) ? 'Correcte' : 'Incorrecte'}}</label>
                </div>
                <div class="col-3 text-end" v-if="question.propositions.length > 1">
                  <a href="#" title="Supprimer la proposition" v-on:click.prevent="onRemoveProposition(idx, idx2)"><i class="fa-solid fa-trash-can"></i></a>
                </div>
              </div>
              <textarea v-bind:id="'prop-'+idx+'-'+idx2" class="form-control" cols="30" rows="1" v-model="question.propositions[idx2]"></textarea>
            </div>
            <div v-if="question.propositions.length < 10" class="my-2">
              <a href="#" v-on:click.prevent="onInsertProposition(idx)"><i class="fa-solid fa-square-plus"></i> Ajouter une proposition</a>
            </div>
          </div>
        </div>
      </div>
    </div>
    <div class="my-2">
      <button class="btn btn-secondary w-100" v-on:click="onIncrementQuestions()"><i class="fa-solid fa-circle-question"></i> Nouvelle Question</button>
    </div>
    <div class="mt-4 mb-2" v-if="mode == 'newQcm'">
      <button class="btn btn-success" v-on:click="onApplyAjouter()"><i class="fa-solid fa-circle-plus"></i> Ajouter</button>
      <button class="btn btn-secondary" v-on:click="onCancelAjouter()"><i class="fa-solid fa-person-running"></i> Annuler</button>
    </div>
    <div class="mt-4 mb-2" v-if="mode == 'editQcm'">
      <button class="btn btn-success" v-on:click="onApplyEditer()"><i class="fa-solid fa-pen-to-square"></i> Editer</button>
      <button class="btn btn-secondary" v-on:click="onCancelEditer()"><i class="fa-solid fa-person-running"></i> Annuler</button>
    </div>
  </div>

  <div class="my-2" v-if="mode == 'deleteQcm'">
    <h2>Suppression d'un QCM</h2>
    <div class="my-2">
      <label>Classe</label>
      <p>{{selectedQcm.classe}}</p>
    </div>
    <div class="my-2">
      <label>Titre</label>
      <p>{{selectedQcm.titre}}</p>
    </div>
    <div class="my-2">
      <label>Description</label>
      <p>{{selectedQcm.description}}</p>
    </div>
    <div class="my-2 card" v-for="question, idx in selectedQcm.questions">
      <div class="card-body">
        <h4>Question {{idx+1}} / {{selectedQcm.questions.length}}</h4>
        <div class="my-2">
          <label>Enoncé</label>
          <p>{{question.enonce}}</p>
        </div>
        <div class="my-2">
          <label><input type="checkbox" v-model="question.is_single" disabled> {{question.is_single ? "Une seule réponse" : "Plusieurs réponses"}}</label>
        </div>

        <h5 class="card-title">Propositions</h5>
        <div class="my-2 card">
          <div class="card-body">
            <div v-for="proposition, idx2 in question.propositions">
              <div class="my-2">
                <label>Proposition {{String.fromCharCode(65+idx2)}}</label> -
                <label v-if="question.is_single"><input type="radio" v-bind:name="'prop'+idx" v-bind:value="String.fromCharCode(65+idx2)" v-model="question.single_answer" disabled> {{question.single_answer == String.fromCharCode(65+idx2) ? 'Correcte' : 'Incorrecte'}}</label>
                <label v-if="!question.is_single"><input type="checkbox" v-bind:name="'prop'+idx+'_'+idx2" v-bind:value="String.fromCharCode(65+idx2)" v-model="question.answers" disabled> {{question.answers.includes(String.fromCharCode(65+idx2)) ? 'Correcte' : 'Incorrecte'}}</label>
              </div>
              <p>{{question.propositions[idx2]}}</textarea>
            </div>
          </div>
        </div>
      </div>
    </div>
    <div class="mt-4 mb-2">
      <p>Attention : vous allez supprimer définitivement ce QCMs. Il n'y a aucun moyen de le récupérer.</p>
      <button class="btn btn-danger" v-on:click="onApplySupprimer()"><i class="fa-solid fa-trash-can"></i> Supprimer</button>
      <button class="btn btn-secondary" v-on:click="onCancelSupprimer()"><i class="fa-solid fa-person-running"></i> Annuler</button>
    </div>
  </div>

  <div class="my-2" v-if="mode == 'rawFormat'">
    <div class="my-2">
      <label><b>Classe</b></label>
      <p>{{selectedQcm.classe}}</p>
    </div>
    <div class="my-2">
      <label><b>Titre</b></label>
      <p>{{selectedQcm.titre}}</p>
    </div>
    <div class="my-2">
      <label><b>Description</b></label>
      <p>{{selectedQcm.description}}</p>
    </div>
    <div class="my-2">
      <label for="questions"><b>Questions</b></label>
      <textarea id="questions" cols="30" rows="4" class="form-control" v-model="selectedQcm.questions"></textarea>
    </div>
    <div class="my-2">
      <label for="reponses"><b>Réponses</b></label>
      <input type="text" class="form-control" v-model="selectedQcm.reponses">
    </div>
    <div class="mt-4 mb-2">
      <button class="btn btn-primary" v-on:click="onExportRawFormat()"><i class="fa-solid fa-file-export"></i> Exporter</button>
      <button class="btn btn-secondary" v-on:click="onCancelRawFormat()"><i class="fa-solid fa-person-running"></i> Annuler</button>
    </div>
  </div>

  <div class="my-2" v-if="mode == 'import'">
    <h2>Importer un QCM</h2>
    <div class="my-2">
      <label for="questions"><b>Copier/Coller le texte à importer</b></label>
      <textarea id="questions" cols="30" rows="4" class="form-control" v-model="importCan"></textarea>
    </div>
    <div class="mt-4 mb-2">
      <button class="btn btn-primary" v-on:click="onContinueImport()"><i class="fa-solid fa-file-import"></i> Importer</button>
      <button class="btn btn-secondary" v-on:click="onCancelImport()"><i class="fa-solid fa-person-running"></i> Annuler</button>
    </div>
  </div>
</div>
<script src="resources/js/vue.min.js"></script>
<script src="resources/apps/qcms.js"></script>