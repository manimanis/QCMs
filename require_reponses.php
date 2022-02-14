<?php
if (isset($_POST['classe'])) {
    // print_r($_POST);
    if ($_SESSION['classe'] != $_POST['classe']) {
        $_SESSION['classe'] = $_POST['classe'];
        $classe = $_POST['classe'];
        unset($_SESSION['qcm_id']);
        unset($_SESSION['startDate']);
        unset($_SESSION['endDate']);
    }
    if ($_SESSION['qcm_id'] != $_POST['qcm_id']) {
        $_SESSION['qcm_id'] = $_POST['qcm_id'];
        $qcm_id = $_POST['qcm_id'];
        unset($_SESSION['startDate']);
        unset($_SESSION['endDate']);
    }
    if ($_SESSION['startDate'] != $_POST['start_date']) {
        $_SESSION['startDate'] = $_POST['start_date'];
        $startDate = $_POST['start_date'];
        unset($_SESSION['endDate']);
    }
    if ($_SESSION['endDate'] != $_POST['end_date']) {
        $_SESSION['endDate'] = $_POST['end_date'];
        $endDate = $_POST['end_date'];
    }
}

function splitAnswer(string $answer)
{
    $i = 0;
    $n = strlen($answer);
    $answer = strtoupper($answer);
    $ans = [];
    while ($i < $n) {
        $subans = "";
        while ($i < $n && $answer[$i] >= "0" && $answer[$i] <= "9") {
            $subans .= $answer[$i];
            $i++;
        }
        while ($i < $n && $answer[$i] >= "A" && $answer[$i] <= "Z") {
            $subans .= $answer[$i];
            $i++;
        }
        $ans[] = $subans;
    }
    return $ans;
}

function getMarks($modelanswer, $useranswer)
{
    $ga = 0;
    $ba = 0;
    $good = [];
    foreach ($useranswer as $ans) {
        $is_good = in_array($ans, $modelanswer);
        if ($is_good) {
            $ga++;
        } else {
            $ba++;
        }
        $good[] = $is_good;
    }
    return [$ga, $ba, $good];
}

$classes = listClasses($dbh);
$classe = (isset($_SESSION['classe'])) ? $_SESSION['classe'] : reset($classes);
$qcms = listQcms($dbh, $classe);
if (count($qcms) != 0) {
    $qcm_id = (isset($_SESSION['qcm_id'])) ? $_SESSION['qcm_id'] : reset($qcms)['id'];
    $dates = listDatesQcm($dbh, $qcm_id);
    $startDate = (isset($_SESSION['startDate'])) ? $_SESSION['startDate'] : reset($dates);
    $endDate = (isset($_SESSION['endDate'])) ? $_SESSION['endDate'] : end($dates);

    $_SESSION['classe'] = $classe;
    $_SESSION['qcm_id'] = $qcm_id;
    $_SESSION['startDate'] = $startDate;
    $_SESSION['endDate'] = $endDate;

    $selected_qcm = [];
    foreach ($qcms as $qcm) {
        if ($qcm['id'] == $qcm_id) {
            $selected_qcm = $qcm;
            break;
        }
    }

    $answers = listAnswers($dbh, $qcm_id, $startDate, $endDate);
    /*
[id] => 12 
[qcm_id] => 1
[nom_prenom] => Mohamed Anis MANI 
[date_rep] => 2022-02-12 19:24:45 
[ip_addr] => 127.0.0.1 
[reponse] => 1A2A3A4A5A6A7A8A9A10A )
*/
}
?>
<form method="post">
    <div class="row">
        <div class="col-3">
            <label for="classes">Classes</label>
            <select name="classe" id="classes" class="form-control">
                <?php foreach ($classes as $cls) {
                    echo "<option" . (($classe == $cls) ? " selected" : "") . ">{$cls}</option>";
                } ?>
            </select>
        </div>
        <div class="col-3">
            <label for="qcm_ids">Titre</label>
            <select name="qcm_id" id="qcm_ids" class="form-control">
                <?php
                foreach ($qcms as $qcm) {
                    echo "<option value=\"{$qcm['id']}\"" . (($qcm_id == $qcm['id']) ? " selected" : "") . ">{$qcm['titre']}</option>";
                } ?>
            </select>
        </div>
        <div class="col-3">
            <label for="start-date">Date début</label>
            <select name="start_date" id="start-date" class="form-control">
                <?php foreach ($dates as $dt) {
                    echo "<option" . (($startDate == $dt) ? " selected" : "") . ">{$dt}</option>";
                } ?>
            </select>
        </div>
        <div class="col-3">
            <label for="end-date">Date finale</label>
            <select name="end_date" id="end-date" class="form-control">
                <?php foreach ($dates as $dt) {
                    echo "<option" . (($endDate == $dt) ? " selected" : "") . ">{$dt}</option>";
                } ?>
            </select>
        </div>
        <div class="col-3 my-2"><button class="btn btn-secondary">Modifier</button></div>
    </div>
</form>
<?php
if (count($qcms) == 0) {
    echo "Aucun QCM à afficher pour la classe $classe.";
    exit();
}
$modelanswer = splitAnswer($selected_qcm['reponses']);

echo "<h2>{$selected_qcm['titre']}</h2>";
echo "<p>{$selected_qcm['description']}</p>";
echo "<p><strong>Classe :</strong> {$classe}</p>";
echo "<p><strong>Date :</strong> {$startDate} &rarr; {$endDate}</p>";
echo "<p><strong>Réponses :</strong> ";
foreach ($modelanswer as $idx => $ans) {
    echo "<span>$ans</span>";
    echo "/";
}
echo "</p>";
echo "<table class=\"table table-sm table-bordered table-striped border-dark align-middle\">";
echo "<tr>";
echo "<th>&nbsp;</th>";
echo "<th>Nom & Prénom</th>";
echo "<th width=\"100\">Date</th>";
echo "<th width=\"100\">Adr. IP</th>";
echo "<th>Réponse</th>";
echo "<th width=\"140\">Note</th>";
echo "</tr>";

foreach ($answers as $idx => $answer) {
    $useranswer = splitAnswer($answer['reponse']);
    $marks = getMarks($modelanswer, $useranswer);
    echo "<tr>";
    echo "<td>" . ($idx + 1) . "</td>";
    echo "<td>" . $answer['nom_prenom'] . "</td>";
    echo "<td>" . $answer['date_rep'] . "</td>";
    echo "<td>" . $answer['ip_addr'] . "</td>";
    echo "<td>";
    foreach ($useranswer as $idx => $ans) {
        if ($marks[2][$idx]) {
            echo "<span class=\"text-success\">$ans</span>";
        } else {
            echo "<span class=\"text-danger\"><strike>$ans</strike></span>";
        }
        echo "/";
    }
    echo "</td>";
    echo "<td><small>{$marks[0]} - {$marks[1]} = " . ($marks[0] - $marks[1]) . "</small></td>";
    echo "</tr>";
}
echo "</table>";
