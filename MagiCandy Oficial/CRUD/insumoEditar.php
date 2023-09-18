<?php
include("../CRUD/db.php");

// Verifica si se proporcionó un ID válido en la URL
if (isset($_GET['id']) && is_numeric($_GET['id'])) {
    $id = $_GET['id'];

    // Realiza una consulta SQL para obtener el registro del insumo por su ID
    $query = $conn->prepare("SELECT * FROM insumo WHERE pkid_insumo = ?");
    $query->bind_param("i", $id);
    $query->execute();
    $result = $query->get_result();

    // Verifica si se encontró un registro
    if ($result->num_rows == 1) {
        $row = $result->fetch_assoc();

        // Aquí puedes mostrar un formulario de edición con los valores actuales
        // y permitir al usuario modificarlos.

        // Ejemplo de formulario de edición:
?>

<!DOCTYPE html>
<html lang="es">
        <head>
    <meta charset="UTF-8">
    <title> MagiCandy </title>
    <link rel="stylesheet" href="../DAHSPAGS/FormularioDB.css">
    <link href='https://unpkg.com/boxicons@2.0.7/css/boxicons.min.css' rel='stylesheet'>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="icon" href="../IMG/Icono.ico">
        </head>
<body>

<div class="sidebar close">
        <!-- LINK DE TODAS LAS PAGINAS -->
    <ul class="nav-links">
            <!-- INICIO -->
        <li>
            <a href="../DAHSPAGS/Ingreso.html">
                <i class='bx bx-home' ></i>
                <span class="link_name">Inicio</span>
            </a>
            <ul class="sub-menu blank">
                <li><a class="link_name" href="../DAHSPAGS/Ingreso.html">Inicio</a></li>
            </ul>
        </li>

        <!-- HOJA DE PERFIL -->
        <li>
            <a href="../DAHSPAGS/Perfil.html">
                <i class='bx bx-id-card' ></i>
                <span class="link_name">Perfil</span>
            </a>
            <ul class="sub-menu blank">
                <li><a class="link_name" href="../DAHSPAGS/Perfil.html">Perfil</a></li>
            </ul>
                </li>
        </li>
        <!-- HOJA DE VENTAS -->
            <li>
                <div class="iocn-link">
                <a href="../DAHSPAGS/ReporteVentas.html">
                <i class='bx bx-collection' ></i>
                <span class="link_name">Ventas</span>
                </a>
        <i class='bx bxs-chevron-down arrow' ></i>
            </div>
                <ul class="sub-menu">
                <li><a class="link_name" href="#">Ventas</a></li>
                <li><a href="../DAHSPAGS/ReporteVentas.html">- Reporte de ventas</a></li>
                </ul>
            </li>
        <li>
    <!-- MENU DE INVENTARIO CON SUB CATEGORIAS -->
        <div class="iocn-link">
            <a href="#">
            <i class='bx bx-book-alt' ></i>
            <span class="link_name">Inventario</span>
            </a>
            <i class='bx bxs-chevron-down arrow' ></i>
        </div>
            <ul class="sub-menu">
                <li><a class="link_name" href="#">Inventario</a></li>
                <li><a href="#"><u>Productos:</u></a></li>
                <li><a href="../DAHSPAGS/RegistraProducto.html">- Registra Productos</a></li>
                <li><a href="../DAHSPAGS/EntradaProducto.html">- Entrada Productos</a></li>
                <li><a href="#">- Consultar Productos</a></li>
                <li><a href="../DAHSPAGS/NovedadProducto.html">- Registrar Novedad</a></li>
                <li><a href="#"><u>Insumos:</u></a></li>
                <li><a href="../DAHSPAGS/RegistraInsumo.html">- Registra Insumos</a></li>
                <li><a href="../DAHSPAGS/EntradaInsumo.html">- Entrada Insumos</a></li>
                <li><a href="#">- Consultar Insumos</a></li>
                <li><a href="../DAHSPAGS/NovedadInsumo.html">- Registrar Novedad</a></li>
                <li><a href="../DAHSPAGS/SalidaInsumo.html">- Registrar Salida</a></li>
            </ul>
    <!-- MENU DE PRODUCCION -->
        <li>
            <div class="iocn-link">
                <a href="#">
                    <i class='bx bx-history'></i>
                <span class="link_name">Producción</span>
                </a>
                <i class='bx bxs-chevron-down arrow' ></i>
        </div>
            <ul class="sub-menu">
                <li><a class="link_name" href="#">Producción</a></li>
                <li><a href="#"><u>Orden Producción:</u></a></li>
                    <li><a href="../DAHSPAGS/CrearOrden.php">- Crear Orden</a></li>
                    <li><a href="../DAHSPAGS/consultarOrden.php">- Consultar Orden</a></li>
                <li><a href="#"><u>Actividades</u></a></li>
                    <li><a href="../DAHSPAGS/NuevaActividad.html">- Nueva Actividad</a></li>
                    <li><a href="Error404.html">- Consultar Actividades</a></li>
                <li><a href="#"><u>Novedades:</u></a></li>
                    <li><a href="../DAHSPAGS/GenerarNovedad.html">- Generar Novedad</a></li>
                    <li><a href="Error404.html">- Consultar Novedad</a></li>
            </ul>
        </li>

            <!-- PARA CERRAR SESION -->
        <li>
            <div class="profile-details">
                <a href="../INICIOPAGS/Inicio.html">
                    <i class="bx bx-log-out"></i>
                </a>
                <img src="../IMG/MGCwhite.jpg" width="90PX">
            </div>
        </li>
        </ul>
    </div>

        <section class="home-section">

            <div class="home-content">

                <i class='bx bx-menu' href="Inicio.html" ></i>
                <H3>Editar Insumo</H3><br>
                
            </div>

        </section>

        <section class="form-production" style="margin-top: 10%;">
            
        <label for="produccio-num">Edita Insumo</label><br><br><hr><br>
            <form action="edicionInsumo.php" method="post">

                <input type="hidden" name="id"  style="font-size: large;"   value="<?= $row['pkid_insumo'] ?>">

                <label for="nombre">Nombre del Insumo:</label>
                <input type="text" name="nombre"  style="font-size: large;"  pattern="^[A-Za-z\s]{1,20}$"  required title="Ingresa solo letras y espacios"  value="<?= $row['nombre_insumo'] ?>">

                <label for="categoria" style="margin-left: 14%;">Categoría:</label>
                <input type="text" name="categoria"  style="font-size: large;"  required   value="<?= $row['categoria'] ?>"><br><br>

                <label for="cantidad">Cantidad:</label>
                <input type="text" name="cantidad"  style="font-size: large;"  pattern="^(?:[1-9]|[1-7][0-9]|80)$"  required title="Ingresa solo números, el máximo es 80"  value="<?= $row['cantidad_insumo'] ?>">

                <label for="unidad" style="margin-left: 24%;">Unidad:</label>
                <input type="text" name="unidad"  style="font-size: large;"  pattern="^[A-Za-z\s]{1,20}$"  required title="Ingresa solo letras y espacios"  value="<?= $row['unidad'] ?>"><br><br>

                <input type="submit" class="btn-update" value="Actualizar" id="mostrarToast">

            </form>
        </body>

<script src="../DAHSPAGS/nav.js"></script>

<script>
    document.getElementById('mostrarToast').addEventListener('click', function () {
        const Toast = Swal.mixin({
            toast: true,
            position: 'center',
            showConfirmButton: false,
            timer: 3000,
            timerProgressBar: true,
            didOpen: (toast) => {
                toast.addEventListener('mouseenter', Swal.stopTimer)
                toast.addEventListener('mouseleave', Swal.resumeTimer)
        }
    })

            Toast.fire({
                icon: 'success',
                title: 'Signed in successfully'
            })
        });
        </script>

        </html>
<?php
    } else {
        echo "No se encontró el insumo con ID $id.";
    }
} else {
    echo "ID de insumo no válido.";
}
?>
