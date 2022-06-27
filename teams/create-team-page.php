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
    <link rel="stylesheet" type="text/css" href="create-team-style.css">
    <link rel="icon" type="image/png" href="../resources/logo.png"/>
    <title>Create your team</title>
</head>

<body>
<section class="header">

    <?php
    $sql = "SELECT * FROM countries";

    $nationalities = $conn->query($sql);
    ?>
    <nav>
        <a href="#">CREATE YOUR TEAM</a>
        <div class="nav-links" id="navLinks">
            <ul>
                <li><a href="../home-page/index.php">HOME PAGE</a></li>
                <li><a href="../matches/matches.php">MATCHES</a></li>
                <li><a href="../teams/teams.php">TEAMS</a></li>
                <li><a href="../teams/create-players-page.php">CREATE PLAYERS</a></li>
                <li><a href="../contact/contact-page.php">CONTACT</a></li>
                <li><a href="../login-register/logout.php">LOGOUT</a></li>
            </ul>
        </div>
    </nav>
    <section id="form-section">
        <div class="ct-form" id="ct-form">
            <div class="team-form-div">
                <h2>Create your team</h2>
                <form action="create-team.php" id="team-form" class="input-group" method="POST">
                    <div class="input-box">
                        <input type="text" name="team_name" id="team-name" required>
                        <label for="team-name">Team name</label>
                    </div>
                    <div class="input-box">
                        <br>
                        <br>
                        <select class="selector" name="team_nationality" id="team-nationality" required>
                            <?php foreach ($nationalities as $row) { ?>
                                <option value="<?php echo $row["nationality"]; ?>">
                                    <?php echo $row["nationality"]; ?>
                                </option>
                            <?php } ?>
                        </select>
                        <label for="team-nationality">Nationality</label>
                    </div>
                    <br>
                    <div class="input-box">
                        <input type="text" name="team_logo" id="team-logo" required>
                        <label for="team-logo">Team name</label>
                    </div>
                    <button id="team-form-btn" type="submit">
                    <span></span>
                    <span></span>
                    <span></span>
                    <span></span>
                    Create
                    </button>
                </form>
            </div>
        </div>
    </section>


    <footer>
        <div class="row">
            <div class="author">@Petar Markovic</div>
        </div>
    </footer>

</section>
<script src="create-team-script.js"></script>
</body>

</html>
