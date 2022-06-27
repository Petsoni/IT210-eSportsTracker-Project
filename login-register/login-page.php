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
    <link rel="stylesheet" href="login-page-style.css">
    <link rel="icon" type="image/png" href="../resources/logo.png"/>
    <title>Login/Register</title>
</head>

<body>
<!--<video autoplay muted loop class="bgVideo" src="resources/background.mp4" type="video/mp4">-->
<!--</video>-->
<section class=" header">
    <nav>
        <a href="#">eSports Tracker</a>
        <div class="nav-links" id="navLinks">
            <ul>
                <li><a href="../home-page/index.php">HOMEPAGE</a></li>
                <li><a href="../contact/contact-page.php">CONTACT</a></li>
            </ul>
        </div>
    </nav>

    <div class="container">
        <div class="form-box" id="form-box-id">


            <!-- LOGIN -->
            <?php if (empty($_SESSION['username'])) { ?>
                <div class="button-box">
                    <div id="btn"></div>
                    <button id="login-btn" type="button" class="toggle-btn" onClick="login()">Login</button>
                    <button id="register-btn" type="button" class="toggle-btn" onClick="register()">Register</button>
                </div>

                <form action="login.php" id="login" class="input-group" method="POST">
                    <input name="username" type="text" class="input-field" id="username" placeholder="Username"
                           required>
                    <input name="password" type="password" class="input-field" id="password" placeholder="Password"
                           required>
                    <input type="checkbox" class="check-box"><span class="rememb-pass">Remeber Password</span>
                    <button type="submit" class="submit-btn" name="login">Login</button>
                </form>
            <?php } ?>

            <!-- REGISTER -->
            <form action="register.php" id="register" class="input-group" method="POST">
                <input name="name" type="text" class="input-field" id="nameReg" placeholder="Name" required>
                <input name="surname" type="text" class="input-field" id="surnameReg" placeholder="Surname" required>
                <input name="username" type="text" class="input-field" id="usernameReg" placeholder="Username" required>
                <input name="password" type="password" class="input-field" id="passwordReg" placeholder="Password"
                       required>
                <input type="checkbox" class="check-box"><span class="terms">I agree to the terms and conditions</span>
                <button type="submit" class="submit-btn" onclick="hasNumber(name); hasNumber(surname)">Register</button>
            </form>

        </div>

    </div>
</section>
<footer>
    <div class="row">
        <div class="author">@Petar Markovic</div>
    </div>
</footer>


<script src="login-page-script.js"></script>
<script src="../contact/contact-script.js"></script>

</body>

</html>
