<?php
include("db.php");

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    // Obtener los datos del formulario
    $id = $_POST['id'];
    $fechaInicio = $_POST['fecha_inicio'];
    $fechaFin = $_POST['fecha_fin'];
    $producto = $_POST['producto_producir'];
    $cantidad = $_POST['cantidad_producir'];
    $lote = $_POST['lote'];
    $calidad = $_POST['calidad_producto'];
    $observaciones = $_POST['observaciones'];

    // Consulta para actualizar el registro
    $query = "UPDATE produccion SET
                fecha_inicio = '$fechaInicio',
                fecha_fin = '$fechaFin',
                producto_producir = '$producto',
                cantidad_producir = '$cantidad',
                lote = '$lote',
                calidad_producto = '$calidad',
                observaciones = '$observaciones'
                WHERE pkid_produccion = $id";

    if ($conn->query($query) === TRUE) {
        // Redireccionar al usuario de vuelta a la página de listado
        header("location: ../DAHSPAGS/consultarOrden.php");
        exit();
    } else {
        echo "Error al actualizar el registro: " . $conn->error;
    }
}
$conn->close();
?>

