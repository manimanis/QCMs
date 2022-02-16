<div id="liste-eleves">

  <a id="downloadAnchorElem" style="display:none"></a>

  <div class="my-2" v-if="mode == 'liste'">
    <div class="my-2">
      <label for="classe">Classe</label>
      <select name="classe" id="classe" class="form-control" v-model="curClasse">
        <option v-for="classe, idx in classes" v-bind:value="idx">{{classe}}</option>
      </select>
    </div>
    <div class="my-2">
      <button class="btn btn-primary" v-on:click="onNewClasse()"><i class="fa-solid fa-school"></i> Nouvelle Classe</button>
    </div>
  </div>

  <div class="my-2" v-if="mode == 'liste' && curClasse != -1">
    <h2><i class="fa-solid fa-school"></i> Classe {{classes[curClasse]}}</h2>
    <table class="table table-sm table-bordered table-striped border-dark align-middle">
      <tbody>
        <tr>
          <th width="60"></th>
          <th>Nom &amp; Prénom</th>
          <th width="100">&nbsp;</th>
        </tr>
        <tr v-for="eleve, idxEleve in eleves">
          <td>{{eleve.id}}</td>
          <td>{{eleve.nom_prenom}}</td>
          <td>
            <a href="#" v-on:click="onEditEleve(idxEleve)"><i class="fa-solid fa-pen-to-square"></i></a>
            <a href="#" v-on:click="onDeleteEleve(idxEleve)"><i class="fa-solid fa-trash-can"></i></a>
          </td>
        </tr>
        <tr v-if="eleves.length == 0">
          <td colspan="3">Aucun élève à afficher.</td>
        </tr>
      </tbody>
    </table>
    <div class="my-2">
      <button class="btn btn-primary" v-on:click="onNewEleve()"><i class="fa-solid fa-graduation-cap"></i> Nouveau Elève</button>
    </div>
  </div>

  <div class="my-2" v-if="mode == 'newEleve' || mode == 'editEleve'">
    <!-- <form action="?op=update_eleve" method="post"> -->
    <div class="my-2">
      <label for="classe">Classe</label>
      <input type="text" name="classe" id="classe" class="form-control" placeholder="classe" v-model="selectedEleve.classe">
    </div>
    <div class="my-2">
      <label for="nom_prenom">Nom &amp; prénom</label>
      <input type="text" name="nom_prenom" id="nom_prenom" class="form-control" placeholder="Nom de l'élève" v-model="selectedEleve.nom_prenom">
    </div>
    <div class="my-2">
      <button class="btn btn-primary" v-if="mode == 'editEleve'" v-on:click="onApplyEdit()">Mettre à jour</button>
      <button class="btn btn-primary" v-if="mode == 'newEleve'" v-on:click="onApplyInsert()">Ajouter</button>
      <button class="btn btn-secondary" v-on:click="onCancelEdit()">Annuler</button>
    </div>
  </div>

  <div class="my-2" v-if="mode == 'deleteEleve'">
    <div class="my-2">
      <label for="classe">Classe</label>
      <p>{{selectedEleve.classe}}</p>
    </div>
    <div class="my-2">
      <label for="nom_prenom">Nom &amp; prénom</label>
      <p>{{selectedEleve.nom_prenom}}</p>
    </div>
    <div class="my-2">
      Etes-vous sûr de vouloir supprimer définitivement cet élève ?
    </div>
    <div class="my-2">
      <button class="btn btn-primary" v-on:click="onApplyDelete()">Supprimer</button>
      <button class="btn btn-secondary" v-on:click="onCancelEdit()">Annuler</button>
    </div>
  </div>

  <div class="my-2" v-if="mode == 'newClasse'">
    <!-- <form action="?op=insert_classe" method="post"> -->
    <h2><i class="fa-solid fa-school"></i> Ajout classe</h2>
    <div class="my-2">
      <label for="classe">Classe</label>
      <input type="text" name="classe" id="classe" class="form-control" placeholder="classe" v-model="selectedClasse">
    </div>
    <div class="my-2">
      <label for="eleves">Liste des élèves</label>
      <textarea name="eleves" id="eleves" cols="30" rows="10" class="form-control" placeholder="liste des élèves" v-model="selectedEleves"></textarea>
    </div>
    <div class="my-2">
      <button class="btn btn-primary" v-on:click="onApplyInsertClasse()">Ajouter</button>
      <button class="btn btn-secondary" v-on:click="onCancelInsertClasse()">Annuler</button>
    </div>
  </div>
</div>
<script src="resources/js/vue.min.js"></script>
<script src="resources/apps/eleves.js"></script>