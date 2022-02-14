<?php
require_once 'dbconnect.php';

if ($_SERVER['REMOTE_ADDR'] != "127.0.0.1") {
  echo json_encode(["isok" => false, "errors" => "Non autorisé."]);
  exit();
}

include_once 'db/eleves.php';
include_once 'db/qcms.php';
include_once 'db/answers.php';

$method = $_SERVER['REQUEST_METHOD'];
if ($method == 'GET') {
  $op = isset($_GET['op']) ? $_GET['op'] : "";
} else if ($method == 'POST') {
  $op = isset($_POST['op']) ? $_POST['op'] : "";
}

if ($op == 'classes') {
  $classes = listClasses($dbh);
  echo json_encode(["isok" => true, "classes" => $classes]);
} else if ($op == 'qcms') {
  $qcms = listQcmsAndContent($dbh, $_GET['classe']);
  echo json_encode(["isok" => true, "qcms" => $qcms]);
} else if ($op == 'insertQcm' && $method == 'POST') {
  $id = insertQcm(
    $dbh,
    $_POST['classe'],
    $_POST['titre'],
    $_POST['description'],
    $_POST['nbr_questions'],
    $_POST['questions'],
    $_POST['reponses']
  );
  echo json_encode(["isok" => true, "id" => $id]);
} else if ($op == 'updateQcm' && $method == 'POST') {
  $isok = updateQcm(
    $dbh,
    intval($_POST['id']),
    $_POST['classe'],
    $_POST['titre'],
    $_POST['description'],
    intval($_POST['nbr_questions']),
    $_POST['questions'],
    $_POST['reponses']
  );
  echo json_encode(["isok" => $isok]);
} else if ($op == 'deleteQcm' && $method == 'POST') {
  $isok = deleteQcm(
    $dbh,
    intval($_POST['id'])
  );
  echo json_encode(["isok" => $isok]);
}
