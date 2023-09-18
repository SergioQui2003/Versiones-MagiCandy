<?php
include("../CRUD/db.php");

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    // Verifica si se enviaron todos los campos necesarios desde el formulario
    if (isset($_POST['id'], $_POST['nombre'], $_POST['categoria'], $_POST['cantidad'], $_POST['unidad'])) {
        $id = $_POST['id'];
        $nombre = $_POST['nombre'];
        $categoria = $_POST['categoria'];
        $cantidad = $_POST['cantidad'];
        $unidad = $_POST['unidad'];

        // Actualiza el registro en la base de datos
        $query = $conn->prepare("UPDATE insumo SET nombre_insumo = ?, categoria = ?, cantidad_insumo = ?, unidad = ? WHERE pkid_insumo = ?");
        $query->bind_param("ssisi", $nombre, $categoria, $cantidad, $unidad, $id);

        if ($query->execute()) {
            // La actualización fue exitosa, redirige a una página de éxito o a la lista de insumos.
            header("Location: ../DAHSPAGS/consultarInsumos.php");
            exit();
        } else {
            echo "Error al actualizar el insumo.";
        }
    } else {
        echo "Faltan campos en el formulario.";
    }
} else {
    echo "Acceso no permitido.";
}

//ESTO ES PARA QUE SE VEA EL TOATS DESPUES DE HABER ACTUALIZADO DATOS 

//$mensajeExito = "Insumo actualizado exitosamente";
//header("Location: ../DAHSPAGS/consultarInsumos.php?toastMessage=" . urlencode($mensajeExito));
//exit;
?>
