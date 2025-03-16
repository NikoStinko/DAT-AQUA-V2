<!DOCTYPE html>
<html>

<head>
    <title>Dataviz</title>
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
                <h1>Dataviz</h1>
            </div>
            <div class="logodataqua col-lg-3">
                <img src="./images/imagelogodataqua.png" alt="Logodenous" id="logo2">
            </div>
        </div>
        <div class="row">
            <a id="lien" href="./importer.php">Importer des données</a>
        </div>
        <div class="row">
            <div class="menu col-lg-3">
                <form action="<?php echo htmlspecialchars($_SERVER["PHP_SELF"]); ?>" method="post">
                    <label>
                        Choisissez la donnée principale :
                        <select name="lstdonnee">
                            <option value="Conductivite (µs/cm)">Conductivité</option>
                            <option value="PH">PH</option>
                            <option value="Redox (mV)">Redox</option>
                            <option value="O2">O2</option>
                        </select>
                    </label>
                    </br>
                    <label>
                        Choisissez la donnée secondaire :
                        <select name="lstdonneesecondaire">
                            <option value="NONE">Aucune</option>
                            <option value="Conductivite (µs/cm)">Conductivité</option>
                            <option value="PH">PH</option>
                            <option value="Redox (mV)">Redox</option>
                            <option value="O2">O2</option>
                        </select>
                    </label>
                    </br>
                    <label>
                        Choisissez la date de début :
                        <!-- TODO faire les dates min / dates max + date par défaut-->
                        <input type="datetime-local" name="date_debut" />
                    </label>
                    </br>
                    <label>
                        Choisissez la date de fin :
                        <!-- TODO faire les dates min / dates max + date par défaut-->
                        <input type="datetime-local" name="date_fin" />
                    </label>
                    </br>
                    <input type="submit" value="Afficher le graphique" />
                </form>
            </div>
            <div class="graphique col-lg-9">
                <?php
                // Initialiser les variables pour éviter les erreurs de "undefined index"
                $donnee = "";
                $date_debut = "";
                $date_fin = "";
                $data_points = array(); // Variable qui va contenir les différents points dans le graphique
                $data_points2 = array(); // Variable qui va contenir les points de l'axe secondaire du graphique
                
                // Vérifier si le formulaire a été soumis
                if ($_SERVER["REQUEST_METHOD"] == "POST") {
                    // Tentative de connexion à la Base de Données
                    include("./connexion.php");
                    $donnee = $_REQUEST["lstdonnee"];
                    $donneesecondaire = $_REQUEST["lstdonneesecondaire"];
                    $date_debut = $_REQUEST["date_debut"];
                    $date_fin = $_REQUEST["date_fin"];
                    $count = 0;
                    // Initialisation de la requète selon les données sélectionnée par l'utilisateur
                    if ($donnee == "Conductivite (µs/cm)") {
                        $ordreSQL = "SELECT `Date et Heure`, `Conductivite (µs/cm)` FROM `mesure` JOIN `capteur_conductivimetre` ON mesure.Id_mesure = capteur_conductivimetre.Id_mesure WHERE `Date et Heure` > '$date_debut' AND `Date et Heure` < '$date_fin'";
                        $titreGraphique = "Graphique de la conductivité";
                    } else if ($donnee == "PH") {
                        $ordreSQL = "SELECT `Date et Heure`, `PH` FROM `mesure` JOIN `capteur_ph` ON mesure.Id_mesure = capteur_ph.Id_mesure WHERE `Date et Heure` > '$date_debut' AND `Date et Heure` < '$date_fin'";
                        $titreGraphique = "Graphique du PH";
                    } else if ($donnee == "Redox (mV)") {
                        $ordreSQL = "SELECT `Date et Heure`, `Redox (mV)` FROM `mesure` JOIN `capteur_redox` ON mesure.Id_mesure = capteur_redox.Id_mesure WHERE `Date et Heure` > '$date_debut' AND `Date et Heure` < '$date_fin'";
                        $titreGraphique = "Graphique du Redox";
                    } else if ($donnee == "O2") {
                        $ordreSQL = "SELECT `Date et Heure`, `O2` FROM `mesure` JOIN `capteur_o2` ON mesure.Id_mesure = capteur_o2.Id_mesure WHERE `Date et Heure` > '$date_debut' AND `Date et Heure` < '$date_fin'";
                        $titreGraphique = "Graphique de l'O2";
                    }
                    $resultatRequete = $Connexion->query($ordreSQL);
                    $leTuple = $resultatRequete->fetch();
                    // Valoriastion du tableau qui contient les points de l'axe principal du graphique
                    while ($leTuple != NULL) {
                        $data_points[$count]["label"] = $leTuple["Date et Heure"];
                        $data_points[$count]["y"] = $leTuple[$donnee];
                        $leTuple = $resultatRequete->fetch();
                        $count++;
                    }
                    // Vérification qu'une donnée secondaire a été chosii
                    if ($donneesecondaire != "NONE") {
                        $count = 0;
                        // Initialisation de la seconde requète selon les données sélectionnée par l'utilisateur
                        if ($donneesecondaire == "Conductivite (µs/cm)") {
                            $ordreSQL = "SELECT `Date et Heure`, `Conductivite (µs/cm)` FROM `mesure` JOIN `capteur_conductivimetre` ON mesure.Id_mesure = capteur_conductivimetre.Id_mesure WHERE `Date et Heure` > '$date_debut' AND `Date et Heure` < '$date_fin'";
                            $titreGraphique = $titreGraphique . " et de la conductivité";
                        } else if ($donneesecondaire == "PH") {
                            $ordreSQL = "SELECT `Date et Heure`, `PH` FROM `mesure` JOIN `capteur_ph` ON mesure.Id_mesure = capteur_ph.Id_mesure WHERE `Date et Heure` > '$date_debut' AND `Date et Heure` < '$date_fin'";
                            $titreGraphique = $titreGraphique . " et du PH";
                        } else if ($donneesecondaire == "Redox (mV)") {
                            $ordreSQL = "SELECT `Date et Heure`, `Redox (mV)` FROM `mesure` JOIN `capteur_redox` ON mesure.Id_mesure = capteur_redox.Id_mesure WHERE `Date et Heure` > '$date_debut' AND `Date et Heure` < '$date_fin'";
                            $titreGraphique = $titreGraphique . " et du Redox";
                        } else if ($donneesecondaire == "O2") {
                            $ordreSQL = "SELECT `Date et Heure`, `O2` FROM `mesure` JOIN `capteur_o2` ON mesure.Id_mesure = capteur_o2.Id_mesure WHERE `Date et Heure` > '$date_debut' AND `Date et Heure` < '$date_fin'";
                            $titreGraphique = $titreGraphique . " et de l'O2";
                        }
                        $resultatRequete = $Connexion->query($ordreSQL);
                        $leTuple = $resultatRequete->fetch();
                        // Valoriastion du tableau qui contient les points de l'axe secondaire du graphique
                        while ($leTuple != NULL) {
                            $data_points2[$count]["label"] = $leTuple["Date et Heure"];
                            $data_points2[$count]["y"] = $leTuple[$donneesecondaire];
                            $leTuple = $resultatRequete->fetch();
                            $count++;
                        }
                    }
                    ?>
                    <!-- TODO Faire en sorte d'avoir les unités sur les points du graphique -->
                    <div id="graphique">
                        <script>
                            window.onload = function () {
                                var chart = new CanvasJS.Chart("chartContainer", {
                                    animationEnabled: true,
                                    title: {
                                        text: "<?php echo $titreGraphique ?>"
                                    },
                                    axisY: {
                                        title: "<?php echo $donnee; ?>",
                                        titleFontColor: "#4F81BC",
                                        lineColor: "#4F81BC",
                                        labelFontColor: "#4F81BC",
                                        tickColor: "#4F81BC"
                                    },
                                    <?php if ($donneesecondaire != "NONE") { ?>
                                                axisY2: {
                                            title: "<?php echo $donneesecondaire; ?>",
                                            titleFontColor: "#C0504E",
                                            lineColor: "#C0504E",
                                            labelFontColor: "#C0504E",
                                            tickColor: "#C0504E"
                                        },
                                    <?php } ?>
                                        data: [{
                                        type: "spline",
                                        markerSize: 5,
                                        xValueType: "dateTime",
                                        dataPoints: <?php echo json_encode($data_points, JSON_NUMERIC_CHECK); ?>
                                    }<?php if ($donneesecondaire != "NONE") { ?>,
                                        {
                                            type: "spline",
                                            axisYType: "secondary",
                                            markerSize: 5,
                                            xValueType: "dateTime",
                                            dataPoints: <?php echo json_encode($data_points2, JSON_NUMERIC_CHECK); ?>
                                        }
                                        <?php } ?>]
                                });
                                chart.render();
                            }
                        </script>
                        <div id="chartContainer"></div>
                        <script src="https://cdn.canvasjs.com/canvasjs.min.js"></script>
                        <?php
                }
                ?>
                </div>
            </div>
        </div>
</body>

</html>