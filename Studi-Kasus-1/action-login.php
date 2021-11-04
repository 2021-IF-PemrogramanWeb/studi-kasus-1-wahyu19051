<?php
    // variable pendefinisian kredensial
    $usernamelogin = 'admin';
    $passwordlogin = 'admin123';

    // memulai session
    session_start();

    // mengambil isian dari form login
    $username = $_POST['username'];
    $password = $_POST['password'];

    // pengecekan kredensial login
    if ($username == $usernamelogin && $password == $passwordlogin) {
        session_start();
        $_SESSION['username'] = $username;
        header("Location: connect/table.php");
    } 
    else {
        header("Location: index.html");
   }
?>