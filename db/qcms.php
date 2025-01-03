<?php
function listQcms(PDO $dbh, string $classe)
{
    $stmt = $dbh->prepare("SELECT id, classe, titre, `description`, nbr_questions, reponses 
                           FROM qcms WHERE classe = :classe;");
    $stmt->execute([':classe' => $classe]);
    return $stmt->fetchAll(PDO::FETCH_ASSOC);
}

function listQcmsAndContent(PDO $dbh, string $classe)
{
    $stmt = $dbh->prepare("SELECT * 
                           FROM qcms WHERE classe = :classe;");
    $stmt->execute([':classe' => $classe]);
    return $stmt->fetchAll(PDO::FETCH_ASSOC);
}

function listQcmsTitles(PDO $dbh, string $classe)
{
    $stmt = $dbh->prepare("SELECT id, titre 
                           FROM qcms WHERE classe = :classe;");
    $stmt->execute([':classe' => $classe]);
    return $stmt->fetchAll(PDO::FETCH_ASSOC);
}

function getQcmById(PDO $dbh, int $id)
{
    $stmt = $dbh->prepare("SELECT * 
                           FROM qcms WHERE id = :id;");
    $stmt->execute([':id' => $id]);
    return $stmt->fetch(PDO::FETCH_ASSOC);
}

function getAnswerById(PDO $dbh, int $ans_id) {
    $stmt = $dbh->prepare("SELECT * 
                           FROM answers WHERE id = :id;");
    $stmt->execute([':id' => $ans_id]);
    return $stmt->fetch(PDO::FETCH_ASSOC);
}

function listDatesQcm(PDO $dbh, int $qcm_id)
{
    $stmt = $dbh->prepare("SELECT distinct DATE(date_rep) as date_rep 
                           FROM answers 
                           WHERE qcm_id = :qcm_id;");
    $stmt->execute([':qcm_id' => $qcm_id]);
    $items = [];
    foreach ($stmt->fetchAll(PDO::FETCH_ASSOC) as $item) {
        $items[] = $item['date_rep'];
    }
    return $items;
}

function insertQcm(PDO $dbh, string $classe, string $titre, string $description, int $nbr_questions, string $questions, string $reponses)
{
    $stmt = $dbh->prepare("INSERT INTO qcms (classe, titre, `description`, nbr_questions, questions, reponses)
                           VALUES (:classe, :titre, :description, :nbr_questions, :questions, :reponses)");
    if ($stmt->execute([
        ':classe' => $classe,
        ':titre' => $titre,
        ':description' => $description,
        ':nbr_questions' => $nbr_questions,
        ':questions' => $questions,
        ':reponses' => $reponses
    ])) {
        return $dbh->lastInsertId();
    }
    return -1;
}

function updateQcm(PDO $dbh, int $id, string $classe, string $titre, string $description, int $nbr_questions, string $questions, string $reponses)
{
    $stmt = $dbh->prepare("UPDATE qcms 
        SET classe = :classe, 
            titre = :titre,
            `description` = :description, 
            nbr_questions = :nbr_questions, 
            questions = :questions, 
            reponses = :reponses
        WHERE id = :id");
    return $stmt->execute([
        ':id' => $id,
        ':classe' => $classe,
        ':titre' => $titre,
        ':description' => $description,
        ':nbr_questions' => $nbr_questions,
        ':questions' => $questions,
        ':reponses' => $reponses
    ]);
}

function deleteQcm(PDO $dbh, int $id)
{
    $stmt = $dbh->prepare("DELETE FROM qcms 
        WHERE id = :id");
    return $stmt->execute([
        ':id' => $id
    ]);
}
