<?php
if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    // Obtener los datos del formulario
    $id = $_POST['producto'];
    $nombre = $_POST['nombre'];
    $categoria = $_POST['categoria'];
    $cantidad = $_POST['cantidad'];

    // Realizar la actualización en la base de datos o almacenamiento
    //
    // Redirigir de nuevo a la página principal
    header('Location: ../DASHPAGS/RegistraProducto.php');
    exit;
}
?>
