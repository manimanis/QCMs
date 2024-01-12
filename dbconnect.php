<?php
$user = "root";
$pass = "";
// $pass = "mysqlroot";
$base = "qcm_answers";
$host = "127.0.0.1";

$errors = [];
try {
  $dbh = new PDO("mysql:dbname={$base};host=$host", 
  $user, $pass, 
  [
    PDO::MYSQL_ATTR_INIT_COMMAND => "SET NAMES utf8",
    PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION
  ]);
} catch (PDOException $e) {
  $errors[] = "Connexion impossible : " . $e->getMessage();
}
if (count($errors)) {
  echo json_encode(["isok" => false, "errors" => $errors]);
  exit();
}