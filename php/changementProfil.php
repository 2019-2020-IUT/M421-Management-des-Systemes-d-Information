<?php
    include "database.php";
    include "selectionProfil.php";

    $nomProfil = $_POST["Nom"];
    $imageProfil = $_POST["image"];

    $sql = "SELECT"
?>