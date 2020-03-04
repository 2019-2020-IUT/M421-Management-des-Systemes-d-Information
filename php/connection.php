<?php
    /*-------------------------------------------------------------------------------------
    Vérifier la connexion et recuperer l'id pour recuperer la bonne page de choix de profil
    -------------------------------------------------------------------------------------*/

    include "database.php";

    $nom = $_POST["id"];
    $pwd = $_POST["psw"];
    $idClient = null;

    $sql = "SELECT * FROM CLIENT";
    $result = $conn->query($sql);


    if ($result->num_rows > 0) {
        // output data of each row
        while($row = $result->fetch_assoc()) {
            //si on a trouvé le bon compte
            if ($row["nom"] == $nom && $row["psw"] == $pwd){
                $idClient = $row["id_client"];
                break;
            }
        }
    } else {
        echo "Il n'y a pas de client d'enregistrer";
    }

    //si il y a une erreur d'identification
    if ($idClient == null){
        echo "Nom ou mot de passe incorecte !";
    }

    //redirection vers la page de choix de profil

    $conn->close();
?>