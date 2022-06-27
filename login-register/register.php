<?php
require_once("../db-connection/connect.php");
session_start();

if (!empty($_POST['name']) && !empty($_POST['surname']) && !empty($_POST['username']) && !empty($_POST['password'])) {
    $name = $_POST['name'];
    $surname = $_POST['surname'];
    $username = $_POST['username'];
    $password = $_POST['password'];
    $password = md5($password);
//    $admin = 0;

    $stmt = $conn->prepare("INSERT INTO user (name, surname, username, password, admin) VALUES (:name, :surname, :username, :password, 0)");
    $stmt->bindParam(":name", $name);
    $stmt->bindParam(":surname", $surname);
    $stmt->bindParam(":username", $username);
    $stmt->bindParam(":password", $password);
//    $stmt->bindParam(":admin", $admin);

    echo $name;

    $data = $stmt->execute();

    if ($data) {
        header("Location: login-page.php");
    }else {
        echo "Didn't send the message properly!";
    }
}
