<h1><i class="fa-solid fa-school"></i> Ajout classe</h1>
<form action="?op=insert_classe" method="post">
    <div class="my-2">
        <label for="classe">Classe</label>
        <input type="text" name="classe" class="form-control" placeholder="classe" required>
    </div>
    <div class="my-2">
        <label for="eleves">Liste des élèves</label>
        <textarea name="eleves" id="eleves" cols="30" rows="10" class="form-control" placeholder="liste des élèves" required></textarea>
    </div>
    <div class="my-2">
        <button name="ajouter" class="btn btn-primary">Ajouter</button>
        <button name="annuler" class="btn btn-secondary" type="button" onclick="document.location = '?op=liste_eleves'">Annuler</button>
    </div>
</form>