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
                <li><a href="">- Consultar Productos</a></li>
                <li><a href="../DAHSPAGS/NovedadProducto.html">- Registrar Novedad</a></li>
                <li><a href="#"><u>Insumos:</u></a></li>
                <li><a href="../DAHSPAGS/RegistraInsumo.php">- Registra Insumos</a></li>
                <li><a href="../DAHSPAGS/EntradaInsumo.html">- Entrada Insumos</a></li>
                <li><a href="../DAHSPAGS/consultarInsumos.php">- Consultar Insumos</a></li>
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
                <H3>Registrar Insumo</H3><br>
                
            </div>

        </section>

        <section class="form-production" style="margin-top: 8%">

                <label for="produccio-num">Registro de Insumo</label><br><br><hr><br>

                <form action="../CRUD/guardarInsumo.php" method="POST">

                    <!-- NOMBRE PRODUCTO -->
                    <label for="nombre_insumo">Nombre del insumo:</label>
                    <input type="text" id="nombre_insumo" name="nombre_insumo" style="font-size: large;" pattern="^[A-Za-z\s]{1,30}$"  required title="Ingresa solo letras y espacios">

                    <!-- CATEGORIA -->
                    <label for="categoria" style="font-size: large; margin-left: 12%">Categoría:</label>
                    <select id="categoria" name="categoria" style="font-size: large;" required>
                        <option value="Azúcar" style="font-size: large;">Azúcar</option>
                        <option value="Ácidos" style="font-size: large;">Ácidos</option>
                        <option value="Aminoacidos" style="font-size: large;">Aminoácidos</option>
                        <option value="Colorantes" style="font-size: large;">Colorantes</option>
                        <option value="Saborizantes" style="font-size: large;">Saborizantes</option>
                    </select><br><br>

                    <!-- CANTIDAD -->
                    <label for="cantidad_insumo" style="font-size: large;">Cantidades:</label>
                    <input type="text" id="cantidad_insumo" name="cantidad_insumo" style="font-size: large;"  pattern="^(?:[1-9]|[1-7][0-9]|80)$"  required title="Ingresa solo números, el máximo es 80">

                    <!-- UNIDAD -->
                    <label for="unidad" style="margin-left: 20%">Unidad:</label>
                    <input type="text" id="unidad" name="unidad" style="font-size: large;" pattern="^[A-Za-z\s]{1,20}$"  required title="Ingresa solo letras y espacios"><br><br>

                    <!-- BOTONES -->
                    <button type="submit" class="btn-crearPro" name="registrarInsumo">Registrar insumo ✔</button>
                    <a href="Ingreso.html"><button type="button" class="btn-cancelarPro">Cancelar registro ✖</button></a>

                </form>

        </section>

    <script src="../DAHSPAGS/nav.js"></script>

</body>
</html>