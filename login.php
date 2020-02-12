<?php

if(true) { //on fera la connection bdd ici
    
    $tab = $_REQUEST;
    print_r($tab);
    echo '<br />';
    $psw = "".$tab[1];
    print_r(password_hash($psw, PASSWORD_DEFAULT));
    echo '<br />Bienvenue' .$tab[0];

} else {
    echo '<script>
                setTimeout(function () {
                    window.location.href = "logginPannel.html";
                }, 1);
          </script>';

}
