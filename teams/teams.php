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
    <link rel="stylesheet" type="text/css" href="teams-page-style.css">
    <link rel="icon" type="image/png" href="../resources/logo.png"/>
    <title>Teams</title>
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
                        <li><a href=\"../teams/create-team-page.php\">CREATE YOUR TEAM</a></li>
                        <li><a href=\"../contact/contact-page.php\">CONTACT</a></li>
                        <li><a href=\"../login-register/logout.php\">LOGOUT</a></li>
                    </ul>
                </div>
            </nav>";

        $admin = $_SESSION['admin'];
        if ($admin == 1) {
            $string = $string . "<hr>
                <h1 style='font-size: 2.5rem; color: #99ec2ce1'>ADMIN</h1>";
        }


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
                            <li><a href=\"../contact/contact-page.php\">CONTACT</a></li>
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
            if (!empty($_SESSION['username'])) {

                $sql_team = "SELECT * FROM team";

                $sql = "SELECT * FROM countries";

                $result_team = $conn->query($sql_team);

                $username = $_SESSION['username'];


                while ($row = $result_team->fetch()) {
                    $string_teams = "
                    <a class=\"card\" href=\"../players/players.php?id=" . $row['id'] . "\">
                        <div class=\"card__background\" style='background-image: url(" . $row['logo'] . ")'>
                        </div>
                        <div class=\"card__content\">
                            <p class=\"card__category\">" . $row['nationality'] . "</p>
                            <h3 class=\"card__heading\">" . $row['name'] . "</h3>
                        </div>
                    </a>
                ";

                    $admin = $_SESSION['admin'];
                    if ($admin == 1) {
                        $string_teams = $string_teams . "
                    <a class=\"card_admin\" href=\"delete-team.php?id=" . $row['id'] . "\">
                        <div class=\"card__content__admin\">
                            <a class=\"delete-btn\" href=\"delete-team.php?id=" . $row['id'] . "\">
                                <p style='text-align: center'> DELETE TEAM</p> 
                                <p style='text-align: center'><strong>" . $row['name'] . "</strong></p>
                            </a>
                            <br>
                            <br>
                            <form action=\"update-team.php?id=" . $row['id'] . "\" method='POST'>
                                <div class=\"update-btn\">
                                    <p style='text-align: center'>UPDATE TEAM</p> 
                                    <div class=\"input-box\">
                                        <input style='font-weight: bold' name=\"new_name\" type=\"text\" placeholder=' Team " . $row['name'] . " '> 
                                    </div>
                                    <br>
                                    <br>
                                    <button class='update-btn-a' type=\"submit\" id=\"btn-submit\">
                                        Update
                                    </button>
                                </div>
                            </form>
                            
                        </div>
                    </a>
                    
                    ";
                    }

                    echo $string_teams;
                }

            }

            if (empty($_SESSION['username'])) {

                $sql_team = "SELECT * FROM team";

                $result_team = $conn->query($sql_team);

                while ($row = $result_team->fetch()) {
                    $string_teams_empty = "
                    <a class=\"card\" href=\"../players/players.php?id=" . $row['id'] . "\">
                        <div class=\"card__background\" style='background-image: url(" . $row['logo'] . ")'>
                        </div>
                        <div class=\"card__content\">
                            <p class=\"card__category\">" . $row['nationality'] . "</p>
                            <h3 class=\"card__heading\">" . $row['name'] . "</h3>
                        </div>
                    </a>
                ";
                }

                echo $string_teams_empty;
            }

            ?>
            <div>
    </section>

</section>

<!--<a style='margin-top: 2em' href='update-team.php' class=\"update-btn\">
    <p style='text-align: center'> UPDATE TEAM</p>
    <p style='text-align: center'><strong>" . $row['name'] . "</strong></p>
</a>-->

<footer>
    <div class="row">
        <div class="author">@Petar Markovic</div>
    </div>
</footer>

<script src="teams-page-script.js"></script>
</body>
</html>