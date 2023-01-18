<?php
/**
 * We gaan contact maken met de mysql server
 */
require('config.php');

$dsn = "mysql:host=$dbHost;dbname=$dbName;charset=UTF8";

try {
    $pdo = new PDO($dsn, $dbUser, $dbPass);

    if ($pdo) {
        // echo "Er is een verbinding met de mysql-server";
    } else {
        echo "Er is een interne server-error, neem contact op met de beheerder";
    }

} catch(PDOException $e) {
    echo $e->getMessage();
}

/**
 * We gaan een insert-query maken voor het wegschrijven van de formuliergegevens
 */
$sql = "INSERT INTO Persoon (Id
                            ,Voornaam
                            ,Tussenvoegsel
                            ,Achternaam
                            ,Haarkleur)
        VALUES              (NULL
                            ,:voornaam
                            ,:tussenvoegsel
                            ,:achternaam
                            ,:haarkleur);";

// We bereiden de sql-query voor met de method prepare
$statement = $pdo->prepare($sql);

$statement->bindValue(':voornaam', $_POST['firstname'], PDO::PARAM_STR);
$statement->bindValue(':tussenvoegsel', $_POST['infix'], PDO::PARAM_STR);
$statement->bindValue(':achternaam', $_POST['lastname'], PDO::PARAM_STR);
$statement->bindValue(':haarkleur', $_POST['haircolor'], PDO::PARAM_STR);

// We vuren de sql-query af op de database

$result = $statement->execute();

if ($result) {
    echo "Er is een nieuw record gemaakt in de database.";
    header('Refresh:2; url=read.php');
} else {
    echo "Er is geen nieuw record gemaakt.";
    header('Refresh:2; url=read.php');
}
 