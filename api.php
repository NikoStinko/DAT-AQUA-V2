<?php
// Inclure le fichier de connexion à la base de données
include("./connexion.php");

// Vérifier si une requête POST est envoyée
if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    // Vérifier si un fichier a été uploadé sans erreur
    if (isset($_FILES["fileToUpload"]) && $_FILES["fileToUpload"]["error"] == UPLOAD_ERR_OK) {
        // Nom de fichier temporaire
        $tmp_name = $_FILES["fileToUpload"]["tmp_name"];
        // Déplacer le fichier uploadé dans le dossier upload
        $file_path = './upload/' . basename($_FILES["fileToUpload"]["name"]);
        if (move_uploaded_file($tmp_name, $file_path)) {
            // Analyser le fichier CSV
            $csv_data = parse_csv_file($file_path, 8, 15);

            // Initialisation d'un flag pour suivre les erreurs
            $error_occurred = false;

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
                    echo json_encode(["message" => "Erreur d'insertion dans la table mesure"]);
                    $error_occurred = true;
                    break;
                }

                // Insertion dans la table capteur_ph
                $temp = substr($row[3], 1, -1);
                $ph = substr($row[4], 1, -1);
                $tension = substr($row[5], 1, -1);
                $ordresql = "INSERT INTO `capteur_ph`(`Temp (°C)`, `PH`, `Tension_sonde (mv)`) VALUES ('$temp', '$ph', '$tension')";
                $result = $Connexion->exec($ordresql);
                if ($result == 0) {
                    echo json_encode(["message" => "Erreur d'insertion dans la table capteur_ph"]);
                    $error_occurred = true;
                    break;
                }

                // Insertion dans la table capteur_redox
                $temp = substr($row[6], 1, -1);
                $redox = substr($row[7], 1, -1);
                $tension = substr($row[8], 1, -1);
                $ordresql = "INSERT INTO `capteur_redox`(`Temp (°C)`, `Redox (mV)`, `Tension_sonde (mv)`) VALUES ('$temp', '$redox', '$tension')";
                $result = $Connexion->exec($ordresql);
                if ($result == 0) {
                    echo json_encode(["message" => "Erreur d'insertion dans la table capteur_redox"]);
                    $error_occurred = true;
                    break;
                }

                // Insertion dans la table capteur_o2
                $temp = substr($row[9], 1, -1);
                $o2 = substr($row[10], 1, -1);
                $tension = substr($row[11], 1, -1);
                $ordresql = "INSERT INTO `capteur_o2`(`Temp (°C)`, `O2`, `Tension_sonde (mv)`) VALUES ('$temp', '$o2', '$tension')";
                $result = $Connexion->exec($ordresql);
                if ($result == 0) {
                    echo json_encode(["message" => "Erreur d'insertion dans la table capteur_o2"]);
                    $error_occurred = true;
                    break;
                }

                // Insertion dans la table capteur_conductivimetre
                $temp = substr($row[12], 1, -1);
                $conductivite = substr($row[13], 1, -1);
                $tension = substr($row[14], 1, -1);
                $ordresql = "INSERT INTO `capteur_conductivimetre`(`Temp (°C)`, `Conductivite (µs/cm)`, `Tension_sonde (mv)`) VALUES ('$temp', '$conductivite', '$tension')";
                $result = $Connexion->exec($ordresql);
                if ($result == 0) {
                    echo json_encode(["message" => "Erreur d'insertion dans la table capteur_conductivimetre"]);
                    $error_occurred = true;
                    break;
                }
            }

            // Afficher un message de confirmation ou d'erreur
            if (!$error_occurred) {
                echo json_encode(["message" => "Insertion réussie !"]);
            } else {
                echo json_encode(["message" => "Une erreur s'est produite lors de l'insertion des données."]);
            }
        } else {
            echo json_encode(["message" => "Erreur lors du déplacement du fichier."]);
        }
    } else {
        echo json_encode(["message" => "Erreur lors de l'upload du fichier."]);
    }
} else {
    echo json_encode(["message" => "Méthode non autorisée. Utilisez POST."]);
}

// Fonction pour analyser un fichier CSV
function parse_csv_file($file_path, $num_lines_to_skip_at_start, $num_lines_to_skip_at_end)
{
    $csv_file = fopen($file_path, 'r');
    try {
        for ($i = 0; $i < $num_lines_to_skip_at_start; $i++) {
            fgets($csv_file);
        }
        $csv_data = array();
        while (($row = fgetcsv($csv_file, 0, ';')) !== FALSE) {
            $csv_data[] = $row;
        }
        $csv_data = array_slice($csv_data, 0, -$num_lines_to_skip_at_end);
        return $csv_data;
    } finally {
        fclose($csv_file);
    }
}
?>
