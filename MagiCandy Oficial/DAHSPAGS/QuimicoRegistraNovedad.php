<?php
session_start();
if (!isset($_SESSION['identificacion'])) {
    //si no existe identificacion
    header('Location: ../DAHSPAGS/AcessoDenegado.php');
}else { ?>

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
            <a href="../DAHSPAGS/QuimicoInicio.php">
                <i class='bx bx-home' ></i>
                <span class="link_name">Inicio</span>
            </a>
            <ul class="sub-menu blank">
                <li><a class="link_name" href="../DAHSPAGS/QuimicoInicio.php">Inicio</a></li>
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
                <li><a href="">- Consultar Productos</a></li>
                <li><a href="../DAHSPAGS/QuimicoRegistrarNovedad">- Registrar Novedad</a></li>
                <li><a href="#"><u>Insumos:</u></a></li>
                <li><a href="../DAHSPAGS/EntradaInsumo.html">- Entrada Insumos</a></li>
                <li><a href="../DAHSPAGS/QuimicoConsultarInsumos.php">- Consultar Insumos</a></li>
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
                    <li><a href="../DAHSPAGS/QuimicoCrearOrden.php">- Crear Orden</a></li>
                    <li><a href="../DAHSPAGS/QuimicoConsultarOrden.php">- Consultar Orden</a></li>
                <li><a href="#"><u>Actividades</u></a></li>
                    <li><a href="../DAHSPAGS/NuevaActividad.html">- Nueva Actividad</a></li>
                    <li><a href="../ERROR/error404.php">- Consultar Actividades</a></li>
                <li><a href="#"><u>Novedades:</u></a></li>
                    <li><a href="../DAHSPAGS/GenerarNovedad.html">- Generar Novedad</a></li>
                    <li><a href="../ERROR/error404.php">- Consultar Novedad</a></li>
            </ul>
        </li>

            <!-- PARA CERRAR SESION -->
            <li>
                <div class="profile-details">
                    <a href="../ROLES/logOut.php"> <!-- Enlace al archivo PHP de cierre de sesión -->
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
                <H3>Registrar Novedad</H3><br>
                
            </div>

        </section>

        <section class="form-production">

                <label for="produccio-num">Novedad de productos</label><br><br><hr><br>
                <form action="">
                    <!-- FECHA DE INICIO -->
                    <label for="Fecha">Fecha:</label>
                    <input type="date" style="font-size: large;">

                    <!-- HORA -->
                    <label for="hora" style="margin-left: 29.5%;">Hora:</label>
                    <input type="time" style="font-size: large;"><br><br>

                    <!-- NOMBRE PRODUCTO -->
                    <label for="nombre" >Nombre del producto:</label>
                    <input type="text" style="font-size: large;" required>

                    <!-- PRODUCTO -->
                    <label for="producto" style="margin-left: 11.5%;">ID del producto:</label>
                    <input type="text" style="font-size: large;" required><br><br>

                    <!-- ASUNTO -->
                    <label for="asunto">Asunto:</label>
                    <input type="text" style="font-size: large;" required ><br><br>

                    <!-- COMENTARIOS DE LA NOVEDAD -->
                    <label for="Observacion">Observaciónes de la novedad:</label><br><br>
                    <textarea cols="110" rows="8"  placeholder="  Deje aquí su novedad del producto " style="font-size: large;"></textarea><br><br>

                    <!-- BOTON PARA CREAR PRODUCCION -->
                    <button class="btn-crearPro">Crear novedad ✔ </button>
                    <a href="Ingreso.html"><button class="btn-cancelarPro">Cancelar novedad ✖ </button></a>
                </form>
                
        </section>

        <script src="../DAHSPAGS/nav.js"></script>
        
</body>
</html>

<?php
}
?>