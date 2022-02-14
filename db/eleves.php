<?php
function listClasses(PDO $pdo)
{
    $stmt = $pdo->query("SELECT distinct classe FROM qcms;");
    $items = [];
    foreach ($stmt->fetchAll(PDO::FETCH_ASSOC) as $item) {
        $items[] = $item['classe'];
    }
    return $items;
}

function getEleve(PDO $pdo, int $id)
{
    $stmt = $pdo->prepare("SELECT * FROM eleves_classes WHERE id = :id;");
    $stmt->execute([':id' => $id]);
    return $stmt->fetch(PDO::FETCH_ASSOC);
}

function listEleves(PDO $pdo, string $classe)
{
    $stmt = $pdo->prepare("SELECT * FROM eleves_classes WHERE classe = :classe ORDER BY nom_prenom ASC;");
    $stmt->execute([':classe' => $classe]);
    return $stmt->fetchAll(PDO::FETCH_ASSOC);
}

function insertEleves(PDO $pdo, array $eleves, string $classe)
{
    $stmt = $pdo->prepare("INSERT INTO eleves_classes (nom_prenom, classe) 
                           VALUES (:nom_prenom, :classe);");
    $count = 0;
    foreach ($eleves as $eleve) {
        if ($stmt->execute([':classe' => $classe, ':nom_prenom' => $eleve])) {
            $count++;
        }
    }
    return $count == count($eleves);
}

function insertEleve(PDO $pdo, string $eleve, string $classe)
{
    $stmt = $pdo->prepare("INSERT INTO eleves_classes (nom_prenom, classe) 
                           VALUES (:nom_prenom, :classe);");
    return $stmt->execute([':classe' => $classe, ':nom_prenom' => $eleve]);
}

function updateEleve(PDO $pdo, int $id, string $eleve, string $classe)
{
    $stmt = $pdo->prepare("UPDATE eleves_classes SET nom_prenom = :nom_prenom, classe= :classe WHERE id = :id;");
    return $stmt->execute([':classe' => $classe, ':nom_prenom' => $eleve, ':id' => $id]);
}

function deleteEleve(PDO $pdo, int $id)
{
    $stmt = $pdo->prepare("DELETE FROM eleves_classes WHERE id = :id;");
    return $stmt->execute([':id' => $id]);
}
