<?php
session_start();

require_once 'dbconnect.php';

if ($_SERVER['REMOTE_ADDR'] != "127.0.0.1") {
  echo "Non autorisé!";
  exit();
}
?>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Administration</title>
  <link rel="stylesheet" href="resources/css/bootstrap.min.css">
  <link rel="stylesheet" href="resources/css/default.css">
  <link rel="stylesheet" href="resources/css/style.css">
  <link rel="stylesheet" href="resources/fa/css/all.min.css">
</head>

<body>
  <nav class="navbar navbar-expand-sm navbar-dark bg-dark">
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#aside_navbar" aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span> Menu
    </button>
    <div class="collapse navbar-collapse" id="aside_navbar">
      <ul class="navbar-nav me-auto mb-2 mb-lg-0">
        <li class="nav-item">
          <a class="nav-link" href="?op=reponses"><i class="fa-solid fa-comment-dots"></i> Réponses</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="?op=liste_eleves"><i class="fa-solid fa-graduation-cap"></i> Elèves</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="?op=gestion_qcms"><i class="fa-solid fa-list-check"></i> QCMs</a>
        </li>
      </ul>
    </div>
  </nav>
  <main class="container my-4">
    <?php
    include_once 'db/eleves.php';
    include_once 'db/qcms.php';
    include_once 'db/answers.php';

    if ($_GET['op'] == "reponses") {
      require_once './qcms/reponses.php';
    } else if ($_GET['op'] == "liste_eleves") {
      require_once './eleves/liste_eleves.php';
    } else if ($_GET['op'] == "ajout_classe") {
      require_once './eleves/ajout_classe.php';
    } else if ($_GET['op'] == "ajout_eleve") {
      require_once './eleves/ajout_eleve.php';
    } else if ($_GET['op'] == "insert_classe") {
      require_once './eleves/insert_classe.php';
    } else if ($_GET['op'] == "insert_eleve") {
      require_once './eleves/insert_eleve.php';
    } else if ($_GET['op'] == "supp_eleve") {
      require_once './eleves/supp_eleve.php';
    } else if ($_GET['op'] == "edit_eleve") {
      require_once './eleves/edit_eleve.php';
    } else if ($_GET['op'] == "update_eleve") {
      require_once './eleves/update_eleve.php';
    } else if ($_GET['op'] == "gestion_qcms") {
      require_once './qcms/gestion.php';
    }
    ?>
  </main>
  <footer class="d-print-none bg-dark text-white p-2">
    <div class="text-center">Page créée avec ♥ par Mohamed Anis MANI</div>
    <div class="text-center small">Année scolaire : 2021/2022</div>
  </footer>
</body>

</html>