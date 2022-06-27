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
    <link rel="stylesheet" type="text/css" href="matches-style.css">
    <link rel="icon" type="image/png" href="../resources/logo.png"/>
    <title>Matches</title>
</head>

<body>
<section class="header">

    <?php
    if (!empty($_SESSION['username'])) {
        $username = $_SESSION['username'];
        $string = " 
            <nav>
             <a href=\"#\">eSports Tracker</a>
                <div class=\"nav-links\" id=\"navLinks\">
                    <ul>
                       <li><a href=\"../home-page/index.php\">HOME PAGE</a></li>
                        <li><a href=\"../teams/teams.php\">TEAMS</a></li>
                        <li><a href=\"../teams/create-team-page.php\">CREATE YOUR TEAM</a></li>
                        <li><a href=\"../contact/contact-page.php\">CONTACT</a></li>
                        <li><a href=\"../login-register/logout.php\">LOGOUT</a></li>
                    </ul>
                </div>
            </nav>
            ";
        echo $string;

        $string_admin = " 
            <nav>
             <a href=\"#\">MATCHES</a>
                <div class=\"nav-links\" id=\"navLinks\">
                    <ul>
                       <li><a href=\"../home-page/index.php\">HOME PAGE</a></li>
                        <li><a href=\"../teams/teams.php\">TEAMS</a></li>
                        <li><a href=\"../contact/contact-page.php\">CONTACT</a></li>
                        <li><a href=\"../login-register/logout.php\">LOGOUT</a></li>
                    </ul>
                </div>
            </nav>";

        $admin = $_SESSION['admin'];
        if ($admin == 1) {
            $string = $string_admin . "<hr>
                <h1 style='font-size: 2.5rem; color: #99ec2ce1'>ADMIN</h1>";
        }
    }

    if (empty($_SESSION['username'])) {
        $string = "
            <nav>
                <a href=\"#\">eSports Tracker</a>
                    <div class=\"nav-links\" id=\"navLinks\">
                        <ul>
                            <li><a href=\"../home-page/index.php\">HOME PAGE</a></li>
                            <li><a href=\"../teams/teams.php\">TEAMS</a></li>
                            <li><a href=\"../contact/contact-page.php\">CONTACT</a></li>
                            <li><a href=\"../login-register/login-page.php\">LOGIN/REGISTER</a></li>
                        </ul>
                    </div>
            </nav>
            <section>
                <div class=\"text-box\">
                    <h1 class=\"username-text\">Please register or login</h1>
                </div>
            </section>";
        echo $string;
    }

    ?>


    <section class="card-section">
        <div class="card-grid">
            <?php
            $sql_join = "SELECT g.date AS game_date, g.id AS match_id,t1.name AS team_name_1, t2.name AS team_name_2 
                        FROM team t1, team t2, games g WHERE t1.id = g.team1_fk AND t2.id = g.team2_fk 
                        AND g.id IN (SELECT g.id FROM games);";

            $result_match = $conn->query($sql_join);

            while ($row = $result_match->fetch()) {
                $string_matches = "
                <div class=\"card\" href=\"../players/players.php\">
                    <div class=\"card__content\">
                        <h3 class=\"card__heading\">" . $row['team_name_1'] . " vs " . $row['team_name_2'] . "</h3>
                        <p style='padding-top: 0.5em' class=\"card__heading\">" . $row['game_date'] . "</p>
                    </div>
                </div>";

                $admin = $_SESSION['admin'];
                if ($admin == 1) {
                    $string_admin_match = $string_matches . "
                    <a class=\"card_admin\" href=\"delete-match.php?id=" . $row['match_id'] . "\">
                        <div class=\"card__content__admin\">
                            <a class=\"delete-btn\" href=\"delete-match.php?id=" . $row['match_id'] . "\">
                                <p style='text-align: center'> DELETE MATCH </p> 
                            </a>
                        </div>
                    </a>
                    
                    ";

                    echo $string_admin_match;
                }

                else {
                    echo $string_matches;
                }
            }
            ?>
            <div>
    </section>

</section>


<footer>
    <div class="row">
        <div class="author">@Petar Markovic</div>
    </div>
</footer>

</body>
</html>