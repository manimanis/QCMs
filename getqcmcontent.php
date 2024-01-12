<?php
require_once 'dbconnect.php';

$default_response = [
    'id' => -1,
    'classe' => 'Dummy',
    'titre' => '',
    'description' => '',
    'questions' => <<<EOD
    [{"enonce":"Quelle est la couleur du ciel lorsqu'il est clair le matin ?","is_single":true,"propositions":["Le ciel est bleu","Le ciel est gris","Le ciel est noir","Le ciel est rouge"]}]
    EOD
];

if (!isset($_GET["qcm_id"])) {
    echo json_encode([
        'isok' => true,
        'data' => [
            'qcm' => $default_response,
            'eleves' => []
        ]
    ]);
    die();
}

$errors = [];
// try {
//     $dbh = new PDO("mysql:dbname={$base};host=$host", $user, $pass);
// } catch (PDOException $e) {
//     $errors[] = "Connexion impossible : " . $e->getMessage();
// }

$qcm_id = intval($_GET['qcm_id']);
$stmt = $dbh->prepare("SELECT id, classe, titre, `description`, questions 
FROM qcms 
WHERE id = :qcm_id");
$stmt->execute([':qcm_id' => $qcm_id]);
$qcm = $stmt->fetch(PDO::FETCH_ASSOC);
if (!$qcm) {
    $qcm = $default_response;
}

$stmt = $dbh->prepare("SELECT * FROM eleves_classes WHERE classe = :classe");
$stmt->execute([':classe' => $qcm['classe']]);
$eleves = $stmt->fetchAll(PDO::FETCH_ASSOC);

echo json_encode([
    'isok' => true,
    'data' => [
        'qcm' => $qcm,
        'eleves' => $eleves
    ]
]);
