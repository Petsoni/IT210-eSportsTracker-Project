<?php
require_once("../db-connection/connect.php");

$username = $_POST['username'];
$text = $_POST['message'];

$sql = $conn->prepare("INSERT INTO message (username, text) VALUES (:username, :text)");

$sql->bindParam(":username", $username);
$sql->bindParam(":text", $text);

$data = $sql->execute();

if ($data) {
    header("Location: contact-page.php");
} else {
    echo "Didn't send the message properly!";
}
?>
