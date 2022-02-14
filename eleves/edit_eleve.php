<?php
$eleve = getEleve($dbh, intval($_GET['id']));
?>
<h1><i class="fa-solid fa-graduation-cap"></i> Mise à jour élève</h1>
<form action="?op=update_eleve" method="post">
    <input type="hidden" name="id" value="<?= $eleve['id'] ?>">
    <div class="my-2">
        <label for="classe">Classe</label>
        <input type="text" name="classe" value="<?= $eleve['classe'] ?>" class="form-control" placeholder="classe" required>
    </div>
    <div class="my-2">
        <label for="nom_prenom">Nom & prénom</label>
        <input type="text" name="nom_prenom" id="nom_prenom" value="<?= $eleve['nom_prenom'] ?>" class="form-control" placeholder="Nom de l'élève" required>
    </div>
    <div class="my-2">
        <button name="update" class="btn btn-primary">Mettre à jour</button>
        <button name="annuler" class="btn btn-secondary" type="button" onclick="document.location = '?op=liste_eleves'">Annuler</button>
    </div>
</form>