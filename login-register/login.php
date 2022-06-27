<?php
require_once("../db-connection/connect.php");
session_start();
$username = $_POST["username"];
$password = $_POST["password"];
$password = md5($password);

if (!empty($_POST['username']) && !empty($_POST['password'])) {
    $stmt = $conn->prepare("SELECT * FROM user WHERE username=:username AND password=:password");
    $stmt->bindParam(":username", $username);
    $stmt->bindParam(":password", $password);
    $stmt->execute();

    $row = $stmt->fetch();
    if ($row) {
        session_start();
        $_SESSION["username"] = $row["username"];
        $_SESSION["password"] = $row["password"];
        $_SESSION["admin"] = $row["admin"];
        header('Location: ../home-page/index.php');
    } else {
        header('Location: ../contact/bad-entry-page.php');
//        echo "<h1>Wrong username or password!</h1>";
    }
} else {
    header('Location: login-page.php');
}
