<?php
require_once 'dbconnect.php';

$default_response = <<<EOD
<div id="enonce-qcm" class="d-none" data-id="0" data-titre="Modèle QCM" data-classe="Aucune"
    data-description="Ceci n'est pas réellement un vrai QCM.">
    <div class="question">
      <div class="enonce">
        <p><strong>Quel est l'entier le plus petit dans la liste suivante ?</strong></p>
      </div>
      <div class="propositions" data-issingle="true">
        <div class="proposition">1</div>
        <div class="proposition">2</div>
        <div class="proposition">3</div>
        <div class="proposition">4</div>
      </div>
    </div>
</div>
EOD;

if (!isset($_GET["qcm_id"])) {
    echo $default_response;
    die();
}

$errors = [];
try {
    $dbh = new PDO("mysql:dbname={$base};host=$host", $user, $pass);
} catch (PDOException $e) {
    $errors[] = "Connexion impossible : " . $e->getMessage();
}

$qcm_id = intval($_GET['qcm_id']);
$file_name = "./qcms/qcm{$qcm_id}.inc";
if (file_exists($file_name)) {
    require_once $file_name;
} else {
    echo $default_response;
}

$stmt = $dbh->prepare("SELECT * FROM qcms WHERE id = :qcm_id");
$stmt->execute([':qcm_id' => $qcm_id]);
$qcm = $stmt->fetch(PDO::FETCH_ASSOC);

$stmt = $dbh->prepare("SELECT * FROM eleves_classes WHERE classe = :classe");
$stmt->execute([':classe' => $qcm['classe']]);
$eleves = $stmt->fetchAll(PDO::FETCH_ASSOC);

echo "<datalist id=\"liste-eleves\">";
foreach ($eleves as $eleve) {
    echo "<option value=\"{$eleve['nom_prenom']}\"></option>";
}
echo "</datalist>";