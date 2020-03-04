<?php
    include "database.php";

    $nom = $_POST["id"];
    $pwd = $_POST["psw"];
    $idClient = null;

    $sql = "SELECT * FROM CLIENT";
    $result = $conn->query($sql);


    if ($result->num_rows > 0) {
        // output data of each row
        while($row = $result->fetch_assoc()) {
            if ($row["nom"] == $nom && $row["psw"] == $pwd){
                $idClient = $row["id_client"];
            }
        }
    } else {
        echo "Il n'y a pas de client d'enregistrer";
    }

    if ($idClient == null){
        echo "Nom ou mot de passe incorecte !";
    }

    $conn->close();
?>