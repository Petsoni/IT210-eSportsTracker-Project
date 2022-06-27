<?php
require_once("../db-connection/connect.php");
session_start();

if (!empty($_POST['player_nick']) && !empty($_POST['player_team'])) {
    $nick = $_POST['player_nick'];
    $pic = $_POST['player_pic'];
    $team = $_POST['player_team'];

    $stmt = $conn->prepare("INSERT INTO player (nick, player_pic, team_fk) VALUES (:nick, :player_pic, :team_fk)");
    $stmt->bindParam(":nick", $nick);
    $stmt->bindParam(":player_pic", $pic);
    $stmt->bindParam(":team_fk", $team);

    $stmt->execute();

    header('Location: ../teams/teams.php');
} else {
    header('Location: ../teams/create-player-page.php');
}