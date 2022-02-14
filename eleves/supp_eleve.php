<?php
if (!isset($_GET['id'])) {
    echo "<script>document.location = '?op=liste_eleves';</script>";
    exit();
}

deleteEleve($dbh, intval($_GET['id']));

echo "<script>document.location = '?op=liste_eleves';</script>";