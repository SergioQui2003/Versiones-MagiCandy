<?php
include("db.php"); // Incluye el archivo de conexión a la base de datos

// Verifica si se proporciona un ID válido a través de la URL
if (isset($_GET['id']) && is_numeric($_GET['id'])) {
    // Obtiene el ID del registro a eliminar desde la URL
    $pkid_produccion = $_GET['id'];

    // Crea una consulta SQL para eliminar el registro
    $sql = "SET FOREIGN_KEY_CHECKS=0; DELETE FROM produccion WHERE pkid_produccion = $pkid_produccion";

    // Ejecuta la consulta
    if ($conn->multi_query($sql) === TRUE) {
        echo "Deleted Successfully";
    } else {
        echo "Error deleting record: " . $conn->error;
    }
}

header("location: ../DAHSPAGS/consultarOrden.php");
// Cierra la conexión a la base de datos
$conn->close();
?>
