<?php
    /*--------------------------------
    Mise à jour de nom image du profil
    --------------------------------*/
    include "database.php";
    include "selectionProfil.php";

    $nomProfil = $_POST["Nom"];
    $imageProfil = $_POST["image"];

    $sql = "SELECT"
?>