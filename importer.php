<!DOCTYPE html>
<html>

<head>
    <title>Dataviz - Importation</title>
    <meta charset="UTF-8">
    <link href="style.css" rel="stylesheet" type="text/css" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="./bootstrap-5.3.3-dist/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
</head>

<body>
    <div class="container-fluid">
        <div class="row">
            <div class="logouppa col-lg-3">
                <img src="./images/LogoUPPA-couleur.jpg" alt="Logo Uppa" id="logo">
            </div>
            <div class="title col-lg-6">
                <h1>Ajouter des données à la base de données</h1>
            </div>
            <div class="logodataqua col-lg-3">
                <img src="./images/imagelogodataqua.png" alt="Logodenous" id="logo2">
            </div>
        </div>
        <div class="row">
            <a id="lien" href="./index.php">Afficher le graphique</a>
        </div>
        <div class="row">
            <div class="menu col-lg-3">
                <form action="" method="post" enctype="multipart/form-data">
                    <input type="file" name="fileToUpload" id="fileToUpload">
                    <input type="submit" value="Importer le fichier" name="submit">
                </form>
            </div>
            <div class="tableau col-lg-9">
                <?php
                // Fonction pour analyser un fichier CSV avec un séparateur point-virgule et ignorer les lignes inutiles
                function parse_csv_file($file_path, $num_lines_to_skip_at_start, $num_lines_to_skip_at_end)
                {
                    // Ouverture du fichier CSV
                    $csv_file = fopen($file_path, 'r');

                    try {
                        // Ignore les ligne inutiles au début
                        for ($i = 0; $i < $num_lines_to_skip_at_start; $i++) {
                            fgets($csv_file);
                        }

                        // Crée un tableau pour stocker les données du fichier CSV
                        $csv_data = array();

                        // Traite le fichier CSV ligne par ligne
                        while (($row = fgetcsv($csv_file, 0, ';')) !== FALSE) {
                            // Ajoute chaque ligne dans le tableau
                            $csv_data[] = $row;
                        }

                        // Ignore les ligne inutiles à la fin
                        $csv_data = array_slice($csv_data, 0, -$num_lines_to_skip_at_end);

                        return $csv_data;
                    } finally {
                        // Fermeture du fichier CSV
                        fclose($csv_file);
                    }
                }


                include("./connexion.php");
                // Définit le nombre de ligne inutiles au début et à la fin du fichier
                $num_lines_to_skip_at_start = 8;
                $num_lines_to_skip_at_end = 15;

                // Vérifie que le formulaire a bien été rendu
                if (isset($_POST["submit"])) {
                    // Vérifie que l'upload du fichier s'est déroulé sans erreurs
                    if (isset($_FILES["fileToUpload"]) && $_FILES["fileToUpload"]["error"] == UPLOAD_ERR_OK) {
                        // Nom de fichier temporaire
                        $tmp_name = $_FILES["fileToUpload"]["tmp_name"];
                        // Déplace les fichiers qui ont été upload dans le dossier upload
                        $file_path = './upload/' . basename($_FILES["fileToUpload"]["name"]);
                        move_uploaded_file($tmp_name, $file_path);
                        // Analyse le fichier qui a été upload
                        $csv_data = parse_csv_file($file_path, $num_lines_to_skip_at_start, $num_lines_to_skip_at_end);

                        // Insertion des données dans les lignes
                        foreach ($csv_data as $row) {
                            // Insertion dans la table mesure
                            $date = str_replace('/', '-', $row[0]);
                            $date = substr($date, 0, -1);
                            $vbatt = substr($row[1], 1, -1);
                            $cadence = substr($row[2], 1, -1);
                            $ordresql = "INSERT INTO `mesure`(`Date et Heure`, `Vbatt (V)`, `Cadence`) VALUES ('$date', '$vbatt', '$cadence')";
                            $result = $Connexion->exec($ordresql);
                            if ($result == 0) {
                                echo "Erreur d'insertion dans la table mesure</br>";
                                break;
                            }
                            // Insertion dans la table capteur_ph
                            $temp = substr($row[3], 1, -1);
                            $ph = substr($row[4], 1, -1);
                            $tension = substr($row[5], 1, -1);
                            $ordresql = "INSERT INTO `capteur_ph`(`Temp (°C)`, `PH`, `Tension_sonde (mv)`) VALUES ('$temp', '$ph', '$tension')";
                            $result = $Connexion->exec($ordresql);
                            if ($result == 0) {
                                echo "Erreur d'insertion dans la table capteur_ph</br>";
                                break;
                            }
                            // Insertion dans la table capteur_redox
                            $temp = substr($row[6], 1, -1);
                            $redox = substr($row[7], 1, -1);
                            $tension = substr($row[8], 1, -1);
                            $ordresql = "INSERT INTO `capteur_redox`(`Temp (°C)`, `Redox (mV)`, `Tension_sonde (mv)`) VALUES ('$temp', '$redox', '$tension')";
                            $result = $Connexion->exec($ordresql);
                            if ($result == 0) {
                                echo "Erreur d'insertion dans la table capteur_redox</br>";
                                break;
                            }
                            // Insertion dans la table capteur_o2
                            $temp = substr($row[9], 1, -1);
                            $o2 = substr($row[10], 1, -1);
                            $tension = substr($row[11], 1, -1);
                            $ordresql = "INSERT INTO `capteur_o2`(`Temp (°C)`, `O2`, `Tension_sonde (mv)`) VALUES ('$temp', '$o2', '$tension')";
                            $result = $Connexion->exec($ordresql);
                            if ($result == 0) {
                                echo "Erreur d'insertion dans la table capteur_o2</br>";
                                break;
                            }
                            // Insertion dans la table capteur_conductivimetre
                            $temp = substr($row[12], 1, -1);
                            $conductivite = substr($row[13], 1, -1);
                            $tension = substr($row[14], 1, -1);
                            $ordresql = "INSERT INTO `capteur_conductivimetre`(`Temp (°C)`, `Conductivite (µs/cm)`, `Tension_sonde (mv)`) VALUES ('$temp', '$conductivite', '$tension')";
                            $result = $Connexion->exec($ordresql);
                            if ($result == 0) {
                                echo "Erreur d'insertion dans la table capteur_conductivimetre</br>";
                                break;
                            }
                        }
                        echo "Insertion réussie !";
                    } else {
                        echo "Error uploading file.";
                    }
                }
                ?>
            </div>
        </div>
    </div>
</body>

</html>