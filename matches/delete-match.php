<?php
require_once("../db-connection/connect.php");
session_start();

$admin = $_SESSION['admin'];

if ($admin != 1) {
    header('Location: index.php');
} else {

    $match_id = $_GET['id'];

    if (isset($match_id)) {
        $stmt = $conn->prepare("DELETE FROM games WHERE id=:id");
        $stmt->bindParam(":id", $match_id);
        $stmt->execute();

        header('Location: matches.php');
    } else {
//        header('Location: delete-match.php');
        echo "Error";
    }
}

?>
