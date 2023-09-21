<?php
if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    // Obtener los datos del formulario
    $id = $_POST['producto'];
    $nombre = $_POST['nombre'];
    $categoria = $_POST['categoria'];
    $cantidad = $_POST['cantidad'];

    // Realizar la inserción en la base de datos o almacenamiento
    //
    // Redirigir de nuevo a la página principal
    header('../DAHSPAGS/RegistraProducto.html');
    exit;
}
?>
