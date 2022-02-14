<?php
if (!isset($_POST['update'])) {
    echo "<script>document.location = '?op=liste_eleves';</script>";
    exit();
}

$id = intval($_POST['id']);
$classe = trim($_POST['classe']);
$eleve = trim($_POST['nom_prenom']);

updateEleve($dbh, $id, $eleve, $classe);

$_SESSION['classe'] = $classe;

echo "<script>document.location = '?op=liste_eleves';</script>";