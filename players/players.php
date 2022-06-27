<?php
require_once("../db-connection/connect.php");
session_start();
?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Exo&family=Kaushan+Script&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="../players/players-page.css">
    <link rel="icon" type="image/png" href="../resources/logo.png" />
    <title>Players</title>
</head>

<body>

<section class="header">

    <?php
    if (!empty($_SESSION['username'])) {
        $username = $_SESSION['username'];
        $string = " 
            <nav>
             <a href=\"#\">TEAMS</a>
                <div class=\"nav-links\" id=\"navLinks\">
                    <ul>
                       <li><a href=\"../home-page/index.php\">HOME PAGE</a></li>
                        <li><a href=\"../matches/matches.php\">MATCHES</a></li>
                        <li><a href=\"../teams/teams.php\">TEAMS</a></li>
                        <li><a href=\"../teams/create-team-page.php\">CREATE YOUR TEAM</a></li>
                        <li><a href=\"../contact/contact-page.php\">CONTACT</a></li>
                        <li><a href=\"../login-register/logout.php\">LOGOUT</a></li>
                    </ul>
                </div>
            </nav>";
        echo $string;
    }
    if (empty($_SESSION['username'])) {
        $string = "
            <nav>
                <a href=\"#\">TEAMS</a>
                    <div class=\"nav-links\" id=\"navLinks\">
                        <ul>
                            <li><a href=\"../home-page/index.php\">HOME PAGE</a></li>
                            <li><a href=\"../matches/matches.php\">MATCHES</a></li>
                            <li><a href=\"../teams/teams.php\">TEAMS</a></li>
                            <li><a href=\"contact.php\">CONTACT</a></li>
                            <li><a href=\"../login-register/login-page.php\">LOGIN/REGISTER</a></li>
                        </ul>
                    </div>
            </nav>
            <section>
                <div class=\"text-box\">
                    <h1 style='font-size: 15px'>Please register or login</h1>
                    <h1>Track your favorite eSports teams and their preformance</h1>
                </div>
            </section>";
        echo $string;
    }
    ?>


    <section class="card-section">
        <div class="card-grid">
            <?php
            $team_id = $_GET['id'];

            $stmt = $conn->prepare("SELECT * FROM player WHERE player.team_fk=:id");
            $stmt->bindParam(":id", $team_id);
            $stmt->execute();

            while ($row = $stmt->fetch()) {
                echo "
                <a class=\"card\" href=\"../players/players.php\">
                    <div class=\"card__background\" style='background-image: url(" . $row['player_pic'] . ")'>
                    </div>
                    <div class=\"card__content\">
                        <h3 class=\"card__heading\">" . $row['nick'] . "</h3>
                    </div>
                </a>";
            }
            ?>
            <div>
    </section>

</section>

</body>

</html>