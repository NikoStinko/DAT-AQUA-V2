<?php
    try {
        $Connexion = new PDO("mysql:host=localhost;dbname=dataviz;charset=utf8", "root", "root");
    } catch (PDOException $erreur) {
        echo "Erreur de connexion à la base de données" . $erreur->getMessage();
        die();
    }
?>