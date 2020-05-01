<?php
    /*------------------------------------
    Donéée pour la connection à phpmyadmin
    ------------------------------------*/
    $servername = "linserv-info-01";;
    $username = "sj801446";
    $password = "sj801446"; 

    // Creer connection
    $conn = new mysqli($servername, $username, $password);

    // Check connection
    if ($conn->connect_error) {
        die("Connection failed: " . $conn->connect_error);
    }
    echo "Connected successfully";
?> 