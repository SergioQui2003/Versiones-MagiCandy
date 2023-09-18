<?php include ("db.php");

// Procesar el formulario de creación
if (isset($_POST['guardarOrden'])) {
    // Obtener los datos del formulario
    $fechaInicio = $_POST['fecha_inicio'];
    $fechaFin = $_POST['fecha_fin'];
    $producto = $_POST['producto_producir'];
    $cantidad = $_POST['cantidad_producir'];
    $lote = $_POST['lote'];
    $calidad = $_POST['calidad_producto'];
    $observaciones = $_POST['observaciones'];

    // Insertar los datos en la base de datos (debes escribir la consulta SQL correspondiente)
    $sql = "INSERT INTO produccion (fecha_inicio, fecha_fin, producto_producir, cantidad_producir, lote, calidad_producto, observaciones, estadoProduccion_pkid_estado_produccion, actividad_pkid_actividad)
            VALUES ('$fechaInicio', '$fechaFin', '$producto', '$cantidad', '$lote', '$calidad', '$observaciones', 1, 1)";

    if ($conn->query($sql) === TRUE) {
        echo "Registro creado correctamente";
    } else {
        echo "Error al crear el registro: " . $conn->error;
    }
}

header ("location: ../DAHSPAGS/consultarOrden.php");

// Cerrar la conexión
$conn->close();

?>
