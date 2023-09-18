<?php
include("db.php");

// Verificar si se proporciona un ID válido en la URL
if (isset($_GET['id']) && is_numeric($_GET['id'])) {
    $id = $_GET['id'];

    // Consulta para obtener los datos del registro
    $query = "SELECT * FROM produccion WHERE pkid_produccion = $id";
    $result = $conn->query($query);

    if ($result->num_rows === 1) {
        $row = $result->fetch_assoc();

        // Procesar la actualización si se envía el formulario
        if ($_SERVER['REQUEST_METHOD'] === 'POST') {
            $fechaInicio = $_POST['fecha_inicio'];
            $fechaFin = $_POST['fecha_fin'];
            $producto = $_POST['producto_producir'];
            $cantidad = $_POST['cantidad_producir'];
            $lote = $_POST['lote'];
            $calidad = $_POST['calidad_producto'];
            $observaciones = $_POST['observaciones'];

            // Consulta para actualizar el registro
            $updateQuery = "UPDATE produccion SET
                            fecha_inicio = '$fechaInicio',
                            fecha_fin = '$fechaFin',
                            producto_producir = '$producto',
                            cantidad_producir = '$cantidad',
                            lote = '$lote',
                            calidad_producto = '$calidad',
                            observaciones = '$observaciones'
                            WHERE pkid_produccion = $id";

if ($conn->query($updateQuery) === TRUE) {
    // Redireccionar al usuario a la página de consulta después de la actualización
    header("Location: ../DAHSPAGS/consultarOrden.php");
    exit();
} else {
    echo "Error al actualizar el registro: " . $conn->error;
}

        }
    } else {
        echo "Registro no encontrado.";
    }
} else {
    echo "ID de registro no válido.";
}
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
                <H3>Editar Orden</H3><br>
                
            </div>

        </section>

        <section class="form-production">
            
        <label for="produccio-num">Edita la Orden</label><br><br><hr><br>
                        <!-- Formulario de edición con campos prellenados -->
    <form method="POST" action="">
        <input type="hidden" name="id"   value="<?= $id ?>">
        <label for="fecha_inicio">Fecha Inicio:</label>
        <input type="date" name="fecha_inicio" style="font-size: large;" required   value="<?= $row['fecha_inicio'] ?>">
        
        <label for="fecha_fin" style="margin-left: 13.5%;">Fecha Final:</label>
        <input type="date" name="fecha_fin" style="font-size: large;" required    value="<?= $row['fecha_fin'] ?>"><br><br>
        
        <label for="producto_producir">Producto:</label>
        <input type="text" name="producto_producir" style="font-size: large;" required     value="<?= $row['producto_producir'] ?>">
        
        <label for="Cantidad"  style="margin-left: 16%;">Cantidad Producir:</label>
        <input type="text" name="cantidad_producir" style="font-size: large;"  pattern="^[1-9]\d*$"  required title="Ingresa un número positivo sin ceros a la izquierda"    value="<?= $row['cantidad_producir'] ?>"><br><br>
        
        <label for="lote">Lote:</label>
        <input type="text" name="lote" style="font-size: large;"  pattern="^(?:[1-9]\d{0,2}|2000)$"  required title="Ingresa un número entre 1 y 2000 sin ceros a la izquierda"    value="<?= $row['lote'] ?>">
        
        <label for="Calidad" style="margin-left: 21%;">Calidad del producto:</label>
        <input type="text" name="calidad_producto" style="font-size: large;" required    value="<?= $row['calidad_producto'] ?>"><br><br>
        
        <label for="observaciones">Observaciones:</label><br><br>
        <textarea cols="110" rows="4" name="observaciones" style="font-size: large;" pattern="^([a-zA-Z]+\s+){0,29}[a-zA-Z]+$" required title="La observación solo admite letras y espacios, con un máximo de 30 palabras"><?= $row['observaciones'] ?></textarea><br><br>
        
        <a href="../DAHSPAGS/consultarOrden.php"><button type="submit" class="btn-update">Actualizar</button></a>
    </form>
        </section>

        <script src="../DAHSPAGS/nav.js"></script>

</body>
</html>