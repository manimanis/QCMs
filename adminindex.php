<?php
require_once 'dbconnect.php';

if ($_SERVER['REMOTE_ADDR'] != "127.0.0.1") {
    echo json_encode(["isok" => false, "errors" => "Non autorisé."]);
    exit();
}

include_once 'db/eleves.php';
include_once 'db/qcms.php';
include_once 'db/answers.php';

$errors = [];
try {
  $dbh = new PDO("mysql:dbname={$base};host=$host", $user, $pass);
} catch (PDOException $e) {
  $errors[] = "Connexion impossible : " . $e->getMessage();
}
if (count($errors)) {
  echo json_encode(["isok" => false, "errors" => $errors]);
  exit();
}

$op = isset($_GET['op']) ? $_GET['op'] : "";

if ($op == 'classes') {
    $classes =listClasses($dbh);
    echo json_encode(["isok" => true, "classes" => $classes]);
} else if ($op == 'qcms') {
    $qcms = listQcms($dbh, $_GET['classe']);
    echo json_encode(["isok" => true, "qcms" => $qcms]);
}