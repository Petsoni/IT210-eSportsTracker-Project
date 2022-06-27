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
    <link rel="stylesheet" type="text/css" href="create-players-style.css">
    <link rel="icon" type="image/png" href="../resources/logo.png"/>
    <title>Create your team/Players</title>
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
                        <li><a href=\"../matches/matches.php\">MATCHES</a></li>
                        <li><a href=\"../teams/teams.php\">TEAMS</a></li>
                        <li><a href=\"../contact/contact-page.php\">CONTACT</a></li>
                        <li><a href=\"../login-register/logout.php\">LOGOUT</a></li>
                    </ul>
                </div>
            </nav>";
        echo $string;
    }
    ?>

    <?php
    $sql = "SELECT * FROM team";

    $teams = $conn->query($sql);
    ?>

    <section id="form-section">
        <div class="ct-form" id="ct-form">
            <div class="players-form-div">
                <form action="create-players.php" id="player-form" class="input-group" method="POST">

                    <h3>Player</h3>
                    <div class="input-box">
                        <input type="text" name="player_nick" id="player-nick" required>
                        <label for="player-nick">Player Nick</label>
                    </div>

                    <div class="input-box">
                        <input type="text" name="player_pic" id="player-pic" placeholder="Image URL">
                        <label for="player-pic">Player Pic</label>
                    </div>

                    <div class="input-box">
                        <br>
                        <br>
                        <select class="selector" name="player_team" id="team-nationality" required>
                            <?php foreach ($teams as $row) { ?>
                                <option value="<?php echo $row["id"]; ?>">
                                    <?php echo $row["name"]; ?>
                                </option>
                            <?php } ?>
                        </select>
                        <label for="team-nationality">Playing for: </label>
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
