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
                <li><a href="../DAHSPAGS/QuimicoRegistraNovedad.php">- Registrar Novedad</a></li>
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
                    <li><a href="../DAHSPAGS/CrearOrden.php">- Crear Orden</a></li>
                    <li><a href="../DAHSPAGS/consultarOrden.php">- Consultar Orden</a></li>
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
                <H3>MagiCandy</H3><br>
                <p style= "margin-top: 470px; margin-right: 60px; font-size: large;"><strong>¡Queridos empleados de nuestra dulcería!</strong><br><br>

                    Hoy, me dirijo a todos ustedes con un corazón lleno de gratitud y alegría.
                    En este mensaje, quiero expresar mi más sincero agradecimiento a cada uno
                    de ustedes por ser parte de nuestro maravilloso equipo. Su dedicación y
                    esfuerzo han sido fundamentales para convertir
                    nuestra dulcería en un lugar mágico y dulce para todos nuestros clientes.
                    En primer lugar, quiero agradecerles por su pasión y amor por lo que hacen. Cada día, se esfuerzan por crear y ofrecer los dulces más deliciosos, coloridos y tentadores que alegran la vida de nuestros clientes. Sus habilidades y creatividad han permitido que nuestra dulcería se destaque y se convierta en un lugar único.
                    
                    Además, quiero reconocer su compromiso y profesionalismo.
                    Cada uno de ustedes desempeña un papel vital en el éxito de
                    nuestra empresa, desde los talentosos pasteleros y chocolateros 
                    hasta el amable personal de atención al cliente. Su amabilidad,
                    paciencia y atención a los detalles han dejado una impresión duradera 
                    en todos aquellos que nos visitan. <br>
                </p>
            </div>
        </section>

        <script src="../DAHSPAGS/nav.js"></script>
</body>
</html>

<?php
}
?>