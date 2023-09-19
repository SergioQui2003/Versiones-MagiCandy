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
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
        <!-- LIBRERIA PARA PANTALLA EMERGENTE -->
        <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>

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
                    <H3>Consultar Orden</H3><br>
                    
                </div>

            </section>

            <section class="form-production">

    <!-- ======================= TABLA DE LOS REGISTROS CRUD ============================= -->

    <table border="2" style="border-collapse: collapse; width: 100%"   >
        <thead >
            <tr style="text-align: center; font-size: 16px">
                <th>ID</th>
                <th>Fecha Inicio</th>
                <th>Fecha Final</th>
                <th>Producto</th>
                <th>Cantidad Producir</th>
                <th>Lote</th>
                <th>Calidad del Producto</th>
                <th>Observaciones</th>
                <th>Acciones</th>
            </tr>
        </thead>
        <tbody>
        <?php
            include ("../CRUD/db.php");
            $sql=$conn->query("SELECT * FROM produccion   ");
            while ($datos=$sql->fetch_object()){?>
            <!-- Aquí mostrarás los registros existentes desde la base de datos -->
            <tr style="text-align: center; font-size: 16px">
                <td><?= $datos->pkid_produccion?></td>
                <td><?= $datos->fecha_inicio?></td>
                <td><?= $datos->fecha_fin?></td>
                <td><?= $datos->producto_producir?></td>
                <td><?= $datos->cantidad_producir?></td>
                <td><?= $datos->lote?></td>
                <td><?= $datos->calidad_producto?></td>
                <td><?= $datos->observaciones?></td>

                <td style="text-align: center;">
                    <button class="btn-edit" style="width: 40%"><a href="../CRUD/editarOrden.php?id=<?= $datos->pkid_produccion ?>"><i class="fas fa-edit" style="color: white;"></i></a></button>
                </td>

            </tr>
        <?php } ?>

        </tbody>
    </table>

            </section>

<!-- =========================PARA LA VENTANA EMERGENTE PARA ELIMINAR================= -->

            <script>
    function confirmDelete(id) {
        Swal.fire({
            title: '¿Estás seguro?',
            text: "¡No podrás recuperar la orden!",
            showCancelButton: true,
            confirmButtonColor: '#1d71b8',
            cancelButtonColor: '#d33',
            confirmButtonText: 'Eliminar',
            cancelButtonText: 'Cancelar'
    }).then((result) => {
        if (result.isConfirmed) {
        // Si el usuario confirma, redirige a la página de eliminación
            window.location.href = `../CRUD/eliminarOrden.php?id=${id}`;
        }
    });
    }
    </script>

    <script src="../DAHSPAGS/nav.js"></script>

    </body>
    </html>

<?php
}
?>