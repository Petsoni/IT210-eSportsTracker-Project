<?php
require_once("../db-connection/connect.php");
session_start();

$admin = $_SESSION['admin'];

if ($admin != 1) {
    header('Location: index.php');
} else {

    $team_id = $_GET['id'];

    if (isset($team_id)) {
        $stmt = $conn->prepare("DELETE FROM team WHERE id=:id");
        $stmt->bindParam(":id", $team_id);
        $stmt->execute();

        header('Location: teams.php');
    } else {
        header('Location: delete-team.php');
    }
}

?>
