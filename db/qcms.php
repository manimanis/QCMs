<?php
function listQcms(PDO $dbh, string $classe)
{
    $stmt = $dbh->prepare("SELECT * FROM qcms WHERE classe = :classe;");
    $stmt->execute([':classe' => $classe]);
    return $stmt->fetchAll(PDO::FETCH_ASSOC);
}

function listDatesQcm(PDO $dbh, int $qcm_id)
{
    $stmt = $dbh->prepare("SELECT distinct DATE(date_rep) as date_rep FROM answers WHERE qcm_id = :qcm_id;");
    $stmt->execute([':qcm_id' => $qcm_id]);
    $items = [];
    foreach($stmt->fetchAll(PDO::FETCH_ASSOC) as $item) {
        $items[] = $item['date_rep'];
    }
    return $items;
}