<?php
if (isset($_GET['id'])) {
    $id = $_GET['id'];

    // Realizar la eliminación en la base de datos o almacenamiento


    // Redirigir de nuevo a la página principal
    header('Location: index.php');
    exit;
}
?>
