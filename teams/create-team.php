<?php
require_once("../db-connection/connect.php");
session_start();

if (!empty($_POST['team_name']) && !empty($_POST['team_nationality']) && !empty($_POST['team_logo'])) {
    $name = $_POST['team_name'];
    $nationality = $_POST['team_nationality'];
    $logo = $_POST['team_logo'];

    $stmt = $conn->prepare("INSERT INTO team (name, nationality, logo) VALUES (:name, :nationality, :logo)");
    $stmt->bindParam(":name", $name);
    $stmt->bindParam(":nationality", $nationality);
    $stmt->bindParam(":logo", $logo);

    $stmt->execute();

    header('Location: teams.php');
} else {
    header('Location: create-team-page.php');
}
