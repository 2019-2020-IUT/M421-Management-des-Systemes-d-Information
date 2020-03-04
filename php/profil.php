<?php
    include "database.php";
    include "connection.php";

    $idProfil = array();
    $nomProfil = array();
    $imageProfil = array();

    $sql = "SELECT * FROM PROFIL p";
    $result = $conn->query($sql);

    $i = 0 //pour savoir ou en est dans le tableau de profil
    
    if ($result->num_rows > 0) {
        // output data of each row
        while($row = $result->fetch_assoc()) {
            //si c'est un profil associé au compte
           if ($row["id_client"] = $idClient){
               $idProfil[$i] = $row["id_profil"];
               $nomProfil[$i] = $row["nom_profil"];
               $imageProfil[$i] = $row["photo_profil"];
               $i++;
           }
        }
    } else {
        echo "Il n'y a pas de profil associé à se compte.";
    }

    $conn->close();
?>