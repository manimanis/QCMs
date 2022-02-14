<?php
if (isset($_POST['classe'])) {
    $classe = $_POST['classe'];
    $_SESSION['classe'] = $classe;
}

$classes = listClasses($dbh);
$classe = isset($_SESSION['classe']) ? $_SESSION['classe'] : reset($classes);
$eleves = listEleves($dbh, $classe);
?>
<div>
    <a href="?op=ajout_classe"><i class="fa-solid fa-school"></i> Nouvelle classe</a>
    <a href="?op=ajout_eleve&classe=<?= $classe ?>"><i class="fa-solid fa-graduation-cap"></i> Nouveau élève</a>
</div>
<form method="post">
    <div class="my-2">
        <label for="classe">Classe</label>
        <select name="classe" id="classe" class="form-control">
            <?php
            foreach ($classes as $cls) {
                echo "<option" . ($cls == $classe ? " selected" : "") . ">" . $cls . "</option>";
            }
            ?>
        </select>
    </div>
    <div class="my-2">
        <button class="btn btn-primary">Modifier</button>
    </div>
</form>
<h1><i class="fa-solid fa-school"></i> Classe <?= $classe ?></h1>
<table class="table table-sm table-bordered table-striped border-dark align-middle">
    <tr>
        <th></th>
        <th>Nom & Prénom</th>
        <th>&nbsp;</th>
    </tr>
    <?php
    foreach ($eleves as $idx => $eleve) {
        echo "<tr>";
        echo "<td>" . ($idx + 1) . "</td>";
        echo "<td>" . $eleve['nom_prenom'] . "</td>";
        echo "<td>".
        "<a href=\"?op=edit_eleve&id=" . $eleve["id"] . "\"><i class=\"fa-solid fa-pen-to-square\"></i></a> ".
        "<a href=\"?op=supp_eleve&id=" . $eleve["id"] . "\" onclick=\"return confirm('Supprimer définitivement cet élève ?')\"><i class=\"fa-solid fa-trash-can\"></i></a>".
        "</td>";
        echo "</tr>";
    }
    ?>
</table>