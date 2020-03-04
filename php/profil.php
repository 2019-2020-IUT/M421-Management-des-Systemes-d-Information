<?php
    include "database.php";
    include "connection.php";

    $nomProfil = null;
    $imageProfil = null;

    $sql = "SELECT * FROM PROFIL p";
    $result = $conn->query($sql);


    if ($result->num_rows > 0) {
        // output data of each row
        while($row = $result->fetch_assoc()) {
            //si c'est un profil associé au compte
           if ($row["id_client"] = $idClient){
               $nomProfil = $row["nom_profil"];
               $imageProfil = $row["photo_profil"];
           }
        }
    } else {
        echo "Il n'y a pas de profil associé à se compte.";
    }

    $conn->close();
?>