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
    <link rel="stylesheet" type="text/css" href="messages-style.css">
    <link rel="icon" type="image/png" href="../resources/logo.png"/>
    <title>Messages</title>
</head>

<body>
<section class="header">

    <?php
    if (!empty($_SESSION['username'])) {

        $string_admin = " 
            <nav>
             <a href=\"#\">USER MESSAGES</a>
                <div class=\"nav-links\" id=\"navLinks\">
                    <ul>
                       <li><a href=\"../home-page/index.php\">HOME PAGE</a></li>
                        <li><a href=\"../teams/teams.php\">TEAMS</a></li>
                        <li><a href=\"../matches/matches.php\">MATCHES</a></li>
                        <li><a href=\"../contact/contact-page.php\">CONTACT</a></li>
                        <li><a href=\"../login-register/logout.php\">LOGOUT</a></li>
                    </ul>
                </div>
            </nav>
            <h1 style='font-size: 2.5rem; color: #99ec2ce1'>ADMIN</h1>";

       echo $string_admin;
    }

    ?>


    <section class="card-section">
        <div class="card-grid">
            <?php
            $sql_join = "SELECT * FROM message;";

            $result_match = $conn->query($sql_join);

            while ($row = $result_match->fetch()) {
                echo "
                <div class=\"card\">
                    <div class=\"card__content\">
                        <h3 class=\"card__heading\">" . $row['text'] . " </h3>
                        <p style='padding-top: 0.5em; font-size: 15px' class=\"card__heading\">" . $row['username'] . "</p>
                    </div>
                </div>
                <a href='delete-message.php?id=" . $row['id'] . "\' class='delete-btn'>DELETE MESSAGE</a>";
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