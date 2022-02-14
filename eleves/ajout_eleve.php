<h1><i class="fa-solid fa-graduation-cap"></i> Ajout Elève</h1>
<form action="?op=insert_eleve" method="post">
    <div class="my-2">
        <label for="classe">Classe</label>
        <input type="text" name="classe" value="<?= $_GET['classe'] ?>" class="form-control" placeholder="classe" required>
    </div>
    <div class="my-2">
        <label for="nom_prenom">Nom & prénom</label>
        <input type="text" name="nom_prenom" id="nom_prenom" class="form-control" placeholder="Nom de l'élève" required>
    </div>
    <div class="my-2">
        <button name="ajouter" class="btn btn-primary">Ajouter</button>
        <button name="annuler" class="btn btn-secondary" type="button" onclick="document.location = '?op=liste_eleves'">Annuler</button>
    </div>
</form>