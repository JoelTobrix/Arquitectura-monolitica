
<?php
// Incluir archivo de configuración de la base de datos
require_once 'config.php';
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Ver Usuarios</title>
    <style>
        table {
            width: 100%;
            border-collapse: collapse;
        }

        th, td {
            border: 1px solid #dddddd;
            text-align: left;
            padding: 8px;
        }

        th {
            background-color: #f2f2f2;
        }
    </style>
</head>
<body>
    <h2>Usuarios Registrados</h2>
    <table>
        <tr>
            <th>ID</th>
            <th>Nombres</th>
            <th>Apellidos</th>
            <th>Sede</th>
            <th>Rol</th>
            <th>Email</th>
        </tr>
        <?php
        // Consulta SQL para seleccionar todos los usuarios
        $sql = "SELECT * FROM datos";
        $result = $conn->query($sql);

        // Si se encontraron resultados, mostrar los datos en una tabla
        if ($result->num_rows > 0) {
            while ($row = $result->fetch_assoc()) {
                echo "<tr>";
                echo "<td>" . $row["ID_Usuario"] . "</td>";
                echo "<td>" . $row["Nombres"] . "</td>";
                echo "<td>" . $row["Apellidos"] . "</td>";
                echo "<td>" . $row["Sede"] . "</td>";
                echo "<td>" . $row["Rol"] . "</td>";
                echo "<td>" . $row["Email"] . "</td>";
                echo "</tr>";
            }
        } else {
            echo "<tr><td colspan='6'>No se encontraron usuarios.</td></tr>";
        }
        ?>
    </table>
</body>
</html>

<?php
// Cerrar la conexión a la base de datos
$conn->close();
?>

