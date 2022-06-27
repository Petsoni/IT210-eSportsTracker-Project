<?php
require_once("../db-connection/connect.php");
session_start();

$admin = $_SESSION['admin'];

if ($admin != 1) {
    header('Location: index.php');
} else {

    $message_id = $_GET['id'];

    if (isset($message_id)) {
        $stmt = $conn->prepare("DELETE FROM message WHERE id=:id");
        $stmt->bindParam(":id", $message_id);
        $stmt->execute();

        header('Location: messages-page.php');
    } else {
        header('Location: delete-message.php');
    }
}

?>
