<?php
// Incluye el archivo de conexión a la base de datos (reemplaza con el nombre y ubicación correctos)
include("db.php");

// Deshabilitar temporalmente las restricciones de llave foránea (foreign key constraints)
$conn->query("SET FOREIGN_KEY_CHECKS=0");

// Verifica si se ha enviado el formulario
if (isset($_POST['registrarInsumo'])) {
    // Obtener los datos del formulario
    $nombre_insumo = $_POST['nombre_insumo'];
    $categoria = $_POST['categoria'];
    $cantidad = isset($_POST['cantidad_insumo']) ? $_POST['cantidad_insumo'] : null; // Verificar si la clave existe
    $unidad = $_POST['unidad'];

    // Verifica si la cantidad_insumo está definida antes de usarla
    if ($cantidad !== null) {
        // Insertar los datos en la base de datos (debes escribir la consulta SQL correspondiente)
        $sql = "INSERT INTO insumo (nombre_insumo, categoria, cantidad_insumo, unidad) VALUES (?, ?, ?, ?)";

        // Preparar la sentencia
        $stmt = $conn->prepare($sql);

        // Enlazar los parámetros
        $stmt->bind_param("ssis", $nombre_insumo, $categoria, $cantidad, $unidad);

        // Ejecutar la sentencia
        if ($stmt->execute()) {
            echo "Insumo guardado exitosamente.";
        } else {
            echo "Error al guardar el insumo: " . $stmt->error;
        }

        // Cerrar la sentencia
        $stmt->close();
    } else {
        echo "Error: La cantidad de insumo no está definida.";
    }
}

// Habilitar nuevamente las restricciones de llave foránea (foreign key constraints)
$conn->query("SET FOREIGN_KEY_CHECKS=1");

// Redirigir al usuario a la página adecuada (reemplaza con la ubicación correcta)
header("Location: ../DAHSPAGS/consultarInsumos.php");

// Cerrar la conexión a la base de datos
$conn->close();
?>
