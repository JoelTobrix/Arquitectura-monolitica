<?php
require_once 'config.php';

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    // Obtener datos del formulario
    $nombres = $_POST["nombres"];
    $apellidos = $_POST["apellidos"];
    $sede = $_POST["sede"];
    $rol = $_POST["rol"];
    $email = $_POST["email"];
    $password = $_POST["password"];

    // Verificar que todos los campos hayan sido completados
    if (!empty($nombres) && !empty($apellidos) && !empty($sede) && !empty($rol) && !empty($email) && !empty($password)) {
        // Verificar si el usuario ya existe en la base de datos
        $sql_check_user = "SELECT ID_Usuario FROM datos WHERE Email = ?";
        if ($stmt_check_user = $conn->prepare($sql_check_user)) {
            $stmt_check_user->bind_param("s", $email);
            $stmt_check_user->execute();
            $stmt_check_user->store_result();

            if ($stmt_check_user->num_rows > 0) {
                echo "El usuario ya existe en la base de datos.";
            } else {
                // Preparar la consulta SQL para la inserción
                $sql_insert_user = "INSERT INTO datos (Nombres, Apellidos, Sede, Rol, Email, Password) VALUES (?, ?, ?, ?, ?, ?)";

                // Preparar la declaración
                if ($stmt_insert_user = $conn->prepare($sql_insert_user)) {
                    // Vincular parámetros
                    $stmt_insert_user->bind_param("ssssss", $nombres, $apellidos, $sede, $rol, $email, $password);

                    // Ejecutar la declaración
                    if ($stmt_insert_user->execute()) {
                        echo "Usuario registrado exitosamente.";
                    } else {
                        echo "Algo salió mal. Inténtalo de nuevo más tarde.";
                    }

                    // Cerrar la declaración
                    $stmt_insert_user->close();
                } else {
                    echo "Error en la preparación de la consulta de inserción.";
                }
            }

            // Cerrar la declaración de verificación de usuario
            $stmt_check_user->close();
        } else {
            echo "Error en la preparación de la consulta de verificación de usuario.";
        }
    } else {
        echo "Por favor completa todos los campos.";
    }
} else {
    echo "Acceso no permitido.";
}

// Cerrar la conexión
$conn->close();
?>












        