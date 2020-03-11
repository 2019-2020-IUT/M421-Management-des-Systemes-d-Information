<?php
    /*----------------------
    écran de choix du profil
    ----------------------*/
    
    include "database.php";
    include "connection.php";

    $users = array();

    $sql = 'SELECT * FROM PROFIL p WHERE ID = $i';
    $result = $conn->query($sql);

    $i = 0; //pour savoir ou en est dans le tableau de profil
    
    if ($result->num_rows > 0) {
        // output data of each row
        while($row = $result->fetch_assoc()) {
            //si c'est un profil associé au compte
           if ($row["id_client"] = $idClient){
                $users[$i] = $row["id_profil"];
                $users[$row["id_profil"]] = array($row["photo_profil"], $row["nom_profil"]);
                $i++;
           }
        }
    } else {
        echo "Il n'y a pas de profil associé à se compte.";
    }

    $conn->close();
?>