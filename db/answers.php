<?php
function listAnswers(PDO $dbh, int $qcm_id, string $startDate, string $endDate)
{
    $stmt = $dbh->prepare("SELECT * FROM answers 
    WHERE qcm_id = :qcm_id AND 
          date_rep BETWEEN :startDate AND :endDate
    ORDER BY date_rep DESC;");
    $stmt->execute([
        ':qcm_id' => $qcm_id,
        ':startDate' => "$startDate 00:00:00",
        ':endDate' => "$endDate 23:59:59"
    ]);
    return $stmt->fetchAll(PDO::FETCH_ASSOC);
}