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
                <H3>Crear Orden</H3><br>
                
            </div>

        </section>

        <section class="form-production">
                <label for="produccio-num">Orden</label><br><br><hr><br>

                <form action="../CRUD/guardarOrden.php" method="POST">
                    
                    <!-- FECHA DE INICIO -->
                    <label for="fecha_inicio">Fecha Inicio:</label>
                    <input type="date" name="fecha_inicio" style="font-size: large;" required>

                    <!-- FECHA FINAL -->
                    <label for="fecha_fin" style="margin-left: 24%;">Fecha Final:</label>
                    <input type="date" name="fecha_fin" style="font-size: large;" required><br><br>

                    <!-- SELECCION DEL PRODUCTO -->
                    <label for="producto_producir">Producto:</label>

                    <select name="producto_producir" style="font-size: large;" required>
                        <option value="Gomas" style="font-size: large;">Gomas</option>
                        <option value="Refrescos" style="font-size: large;">Refrescos</option>
                        <option value="Gelatina" style="font-size: large;">Gelatina</option>
                        <option value="Bombobunes" style="font-size: large;">Bombobunes</option>
                    </select>

                    <!-- CANTIDADES -->
                    <label for="Cantidad"  style="margin-left: 30%;">Cantidad Producir:</label>
                    <input type="text" name="cantidad_producir" id="Cantidad" style="font-size: large;" pattern="^[1-9]\d*$" required title="Ingresa un número positivo sin ceros a la izquierda"><br><br>

                    <!-- LOTE -->
                    <label for="lote">Lote:</label>
                    <input type="text" placeholder=" Número del lote" name="lote" style="font-size: large;" pattern="^(?:[1-9]\d{0,2}|2000)$"  required title="Ingresa un número entre 1 y 2000 sin ceros a la izquierda">

                    <!-- CALIDAD -->
                    <label for="Calidad" style="margin-left: 26.5%;">Calidad del producto:</label>
                    <input type="text" placeholder="Califica la calidad " name="calidad_producto" style="font-size: large;" required><br><br>

                    <!-- OBSERVACIONES DE LA PRODUCCION -->
                    <label for="Observacion">Observación producción:</label><br><br>
                    <textarea cols="110" rows="8"  placeholder="  Deje aquí su observación para la producción" name="observaciones" style="font-size: large;" pattern="^([a-zA-Z]+\s+){0,29}[a-zA-Z]+$" required title="La observación solo admite letras y espacios, con un máximo de 30 palabras"></textarea><br><br>

                    <!-- BOTON PARA CREAR PRODUCCION -->
                    <button class="btn-crearPro" name="guardarOrden">Crear Producción ✔ </button>
                    <a href="Ingreso.html"><button class="btn-cancelarPro">Cancelar Producción ✖ </button></a>
                </form>

        </section>

<script src="../DAHSPAGS/nav.js"></script>

</body>
</html>