<?php
include('../CRUD/db.php');
session_start();

// Verifica si se han enviado los datos del formulario.
if (isset($_POST['identificacion']) && isset($_POST['contraseña'])) {
    $identificacion = $_POST['identificacion'];
    $clave = $_POST['contraseña'];

    $_SESSION['identificacion'] = $identificacion;

    // Consulta SQL para obtener el rol del usuario.
    $consulta = "SELECT rol_pkid_rol FROM usuario WHERE identificacion='$identificacion' AND contraseña='$clave';";

    // Ejecuta la consulta.
    $resultado = mysqli_query($conn, $consulta);

    if ($resultado) {
        $filas = mysqli_num_rows($resultado);

        if ($filas > 0) {
            while ($filas = $resultado->fetch_array()) {
                $perfil = $filas['rol_pkid_rol'];
            }

            switch ($perfil) {
                case 1: // Administrador
                    header('Location: ../DAHSPAGS/Ingreso.php');
                    exit(); 
                case 2: // Cliente
                    header('Location: #'); //NO SE HA HECHO LA PAGINA PARA EL ROL CLIENTE 
                    exit();
                case 3: // Vendedor
                    header('Location: ../DAHSPAGS/Vendedor.php');
                    exit();
                case 4: // Químico
                    header('Location: ../DAHSPAGS/Quimico.php');
                    exit();
                case 5: // Empacador
                    header('Location: ../DAHSPAGS/Empacador.php');
                    exit();
                default:
                    // Rol no válido, puedes redirigir a una página de error.
                    header('Location: error.php');
                    exit();
            }
        } else {
            // Usuario no encontrado en la base de datos.
            echo "<script>alert('nombre usuario incorrecto');</script>";
        }
    }

}

?>
