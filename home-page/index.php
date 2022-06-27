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
    <link rel="stylesheet" href="index-style.css">
    <link rel="icon" type="image/png" href="resources/logo.png"/>
    <title>eSports Tracker</title>
</head>

<body>

<section class=" header">

    <?php
    if (!empty($_SESSION['username'])) {
        $username = $_SESSION['username'];
        $string = " 
            <nav>
             <a href=\"#\">eSports Tracker</a>
                <div class=\"nav-links\" id=\"navLinks\">
                    <ul>
                        <li><a href=\"../teams/teams.php\">TEAMS</a></li>
                        <li><a href=\"../matches/matches.php\">MATCHES</a></li>
                        <li><a href=\"../teams/create-team-page.php\">CREATE YOUR TEAM</a></li>
                        <li><a href=\"../contact/contact-page.php\">CONTACT</a></li>
                        <li><a href=\"../login-register/logout.php\">LOGOUT</a></li>
                    </ul>
                </div>
            </nav>
 
            <section>
                <div class=\"text-box\">
                    <a class=\"username-text\">$username</a>
                    <h1>Track your favorite eSports teams and their preformance</h1>
                    <p>All of your favorite eSports teams in one place</p>
                </div>";

        $string_admin = " 
            <nav>
             <a href=\"#\">eSports Tracker</a>
                <div class=\"nav-links\" id=\"navLinks\">
                    <ul>
                        <li><a href=\"../teams/teams.php\">TEAMS</a></li>
                        <li><a href=\"../matches/matches.php\">MATCHES</a></li>
                        <li><a href=\"../messages/messages-page.php\">MESSAGES</a></li>
                        <li><a href=\"../contact/contact-page.php\">CONTACT</a></li>
                        <li><a href=\"../login-register/logout.php\">LOGOUT</a></li>
                    </ul>
                </div>
            </nav>
 
            <section>
                <div class=\"text-box\">
                    <a class=\"username-text\">$username</a>
                    <h1>As an admin, you have all the privileges</h1>
                    <p>Edit, remove and change every thing you need</p>
                </div>";

        $admin = $_SESSION['admin'];
        if ($admin == 1) {
            $string = $string_admin . "<hr>
                <h1 style='font-size: 2.5rem; color: #99ec2ce1'>ADMIN</h1>";
        }

        echo $string;

    }
    if (empty($_SESSION['username'])) {
        $string = "
            <nav>
                <a href=\"#\">eSports Tracker</a>
                    <div class=\"nav-links\" id=\"navLinks\">
                        <ul>
                            <li><a href=\"../teams/teams.php\">TEAMS</a></li>
                            <li><a href=\"../matches/matches.php\">MATCHES</a></li>
                            <li><a href=\"contact.php\">CONTACT</a></li>
                            <li><a href=\"../login-register/login-page.php\">LOGIN/REGISTER</a></li>
                        </ul>
                    </div>
            </nav>
            <section>
                <div class=\"text-box\">
                    <a class=\"username-text\">Please register or login</a>
                    <h1>Track your favorite eSports teams and their preformance</h1>
                    <p>All of your favorite eSports teams in one place</p>
                </div>
            </section>";
        echo $string;
    }
    ?>

</section>

<footer>
    <div class="row">
        <div class="author">@Petar Markovic</div>
    </div>
</footer>

</body>

</html>