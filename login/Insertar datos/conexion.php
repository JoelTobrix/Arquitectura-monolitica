<?php
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "login";

// Crear conexion
$conn = new mysqli($servername, $username, $password, $dbname);

// Checkear conexion
if ($conn->connect_error) {
    die("Error conexion: " . $conn->connect_error);
}

$nombres = $_POST['nombres'];
$apellidos = $_POST['apellidos'];
$sede = $_POST['sede'];
$rol = $_POST['rol'];
$email = $_POST['email'];
$password = password_hash($_POST['password'], PASSWORD_DEFAULT);

$sql = "INSERT INTO usuarios (nombres, apellidos, sede, rol, email, password)
VALUES ('$nombres', '$apellidos', '$sede', '$rol', '$email', '$password')";

if ($conn->query($sql) === TRUE) {
    echo "New user added successfully";
} else {
    echo "Error de usuario: " . $conn->error;
}

$conn->close();
?>