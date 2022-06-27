<?php
require_once("../db-connection/connect.php");
session_start();

$admin = $_SESSION['admin'];

$team_id = $_GET["id"];
$new_team_name = $_GET["name"];

if ($admin != 1) {
    header('Location: index.php');
} else {

    if (isset($team_id) || isset($new_team_name)) {
        $stmt = $conn->prepare("UPDATE team SET name=:name WHERE id=:id");
        $stmt->bindParam(":name", $new_team_name);
        $stmt->bindParam(":id", $team_id);
        $stmt->execute();

        header('Location: teams.php');
        echo $team_id . $new_team_name;
    } else {
        header('Location: update-team.php');
    }
}


?>
