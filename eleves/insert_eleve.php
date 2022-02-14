<?php
if (!isset($_POST['ajouter'])) {
    echo "<script>document.location = '?op=liste_eleves';</script>";
    exit();
}

$classe = trim($_POST['classe']);
$eleve = trim($_POST['nom_prenom']);

insertEleve($dbh, $eleve, $classe);

$_SESSION['classe'] = $classe;

echo "<script>document.location = '?op=liste_eleves';</script>";