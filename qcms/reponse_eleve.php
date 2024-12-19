<div id="liste-qcm">
  <div class="my-2">
    <h2>Réponse élève <b>{{nom_prenom}}</b></h2>
    <div class="my-2">
      <h3>{{qcm.classe}} - {{qcm.titre}}</h3>
    </div>
    <div class="my-2">
      <label for="description"><strong>Description</strong></label>
      <p v-html="qcm.description"></p>
    </div>
    <div class="my-2">
      <label for="note"><strong>Note</strong></label>
      <p>{{note}} / {{qcm.questions.length}}</p>
    </div>
    <div class="my-2 card" style="page-break-inside: avoid;" v-for="question, idx in qcm.questions">
      <div class="card-body">
        <div>
          <h4>Question {{idx+1}} / {{qcm.questions.length}}
            <span class="badge" v-bind:class="{'bg-success': isCorrect[idx], 'bg-danger': !isCorrect[idx]}">{{isCorrect[idx] ? "Correct" : "Incorrect"}}</span>
          </h4>
        </div>
        <div class="my-2">
          <div v-html="question.enonce"></div>
        </div>
        <div class="my-2 card">
          <div class="card-body">
            <div v-for="proposition, idx2 in question.propositions">
              <div class="row">
                <div class="col-9">
                  <label v-if="question.is_single">
                    <input type="radio" v-bind:name="'prop'+idx" v-bind:value="String.fromCharCode(65+idx2)" v-model="question.studentAnswers" disabled>
                    <span v-bind:id="'prop-'+idx+'-'+idx2" v-html="questionProposition(question, idx2)"></span>
                  </label>
                  <label v-if="!question.is_single">
                    <input type="checkbox" v-bind:name="'prop'+idx+'_'+idx2" v-bind:value="String.fromCharCode(65+idx2)" v-model="question.studentAnswers" disabled>
                    <span v-bind:id="'prop-'+idx+'-'+idx2" v-html="questionProposition(question, idx2)"></span>
                  </label>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>

    <div class="mt-4 mb-2 d-print-none">
      <button class="btn btn-secondary" v-on:click="onCancelAjouter()"><i class="fa-solid fa-person-running"></i> Annuler</button>
    </div>
  </div>
</div>
<script src="resources/js/vue.min.js"></script>
<script src="resources/apps/reponse_eleve.js"></script>