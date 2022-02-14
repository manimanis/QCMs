<?php
if (!isset($_POST['ajouter'])) {
    echo "<script>document.location = '?op=liste_eleves';</script>";
    exit();
}

$classe = trim($_POST['classe']);
$eleves = explode("\n", trim($_POST['eleves']));

foreach ($eleves as $idx => $eleve) {
    $eleves[$idx] = trim($eleve);
}

insertEleves($dbh, $eleves, $classe);

$_SESSION['classe'] = $classe;

echo "<script>document.location = '?op=liste_eleves';</script>";