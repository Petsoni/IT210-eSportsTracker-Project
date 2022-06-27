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
    <link rel="stylesheet" type="text/css" href="contact-page-style.css">
    <link rel="icon" type="image/png" href="../resources/logo.png"/>
    <title>Contact us</title>
</head>

<body>
<section class="header">

    <nav>
        <a href="#">TEAMS</a>
        <div class="nav-links" id="navLinks">
            <ul>
                <li><a href="../home-page/index.php">HOME PAGE</a></li>
                <li><a href="../matches/matches.php">MATCHES</a></li>
                <li><a href="../teams/teams.php">TEAMS</a></li>
            </ul>
        </div>
    </nav>
    <section>
        <div class="ct-form" id="ct-form">
            <div class="players-form-div">
                <div class="text-box">
                    <form action="contact.php" id="contact-form" class="input-group" method="POST">

                        <div class="input-box">
                            <input name="username" type="text">
                            <label for="team-nationality">Username: </label>
                        </div>

                        <div class="input-box">
                            <textarea name="message" id="message" type="text" placeholder="Ask us anything"></textarea>
                        </div>

                        <button type="submit" id="btn-submit">
                            <span></span>
                            <span></span>
                            <span></span>
                            <span></span>
                            Next
                        </button>
                        <button type="button" id="btn-back" onclick="history.back()">
                            <span></span>
                            <span></span>
                            <span></span>
                            <span></span>
                            Back
                        </button>
                    </form>
                </div>
            </div>
        </div>
    </section>


</section>

<section class="contact-sec">
    <div class="map-sec">
        <p><b style="color: #99ec2ce1">Email:</b> info.nis@metropolitan.ac.rs</p>
        <p><b style="color: #99ec2ce1">Address:</b> Bulevar Svetog cara Konstantina 88</p>
        <p><b style="color: #99ec2ce1">Contact:</b> 018 551000 </p>
        <p class="map">
            <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2903.345541679462!2d21.945362965071066!3d43.30702548459146!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x4755b06571362991%3A0x25d6cceab952b797!2z0JzQtdGC0YDQvtC_0L7Qu9C40YLQsNC9!5e0!3m2!1sen!2srs!4v1639568442266!5m2!1sen!2srs"
                    width="400" height="200" style="border:0;" allowfullscreen="" loading="lazy"></iframe>
        </p>
    </div>
</section>

<footer>
    <div class="row">
        <div class="author">@Petar Markovic</div>
    </div>
</footer>

<script src="contact-script.js"></script>
</body>

</html>
