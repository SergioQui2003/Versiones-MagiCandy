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
<!-- ESTE ES PARA MOSTRAR MENSAJES EMERGENTES -->
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
<!-- ESTE ES PARA MOSTRAR EL MENSAJE DE QUE FUE ACTUALIZADO -->
    <link rel="stylesheet" href="../ruta-a-sweetalert2/sweetalert2.min.css">
    <script src="../ruta-a-sweetalert2/sweetalert2.all.min.js"></script>

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
                <H3>Consultar Insumos</H3><br>
                
            </div>

        </section>

        <section class="form-production">

<!-- =======================BOTON HACIA ATRAS======================================== -->

<div class="parent">
<div class="div1"> 
<a href="../DAHSPAGS/RegistraInsumo.php">
            <button class="back">
                <svg height="16" width="16" xmlns="http://www.w3.org/2000/svg" version="1.1" viewBox="0 0 1024 1024"><path d="M874.690416 495.52477c0 11.2973-9.168824 20.466124-20.466124 20.466124l-604.773963 0 188.083679 188.083679c7.992021 7.992021 7.992021 20.947078 0 28.939099-4.001127 3.990894-9.240455 5.996574-14.46955 5.996574-5.239328 0-10.478655-1.995447-14.479783-5.996574l-223.00912-223.00912c-3.837398-3.837398-5.996574-9.046027-5.996574-14.46955 0-5.433756 2.159176-10.632151 5.996574-14.46955l223.019353-223.029586c7.992021-7.992021 20.957311-7.992021 28.949332 0 7.992021 8.002254 7.992021 20.957311 0 28.949332l-188.073446 188.073446 604.753497 0C865.521592 475.058646 874.690416 484.217237 874.690416 495.52477z"></path></svg>
                <span>Atrás</span>
            </button>
        </a>
</div>

<!-- ==========================BOTON DESCARGAR EL EXCEL DEL CRUD==================================== -->

<div class="div2">
    <a href="../CRUD/insumoExcel.php">
        <button class="descarga">
            <i class="fas fa-file-excel" style="font-size: 24px; color: white; margin-right: 1.5px; vertical-align: middle;"></i>
        </button>
    </a>
</div>



</div>


<!-- ======================= TABLA DE LOS REGISTROS CRUD ============================= -->
<table border="2" style="border-collapse: collapse; width: 100%">
    <thead>
        <tr style="text-align: center; font-size: 16px">
            <th>ID</th>
            <th>Nombre del Insumo</th>
            <th>Categoría</th>
            <th>Cantidad</th>
            <th>Unidad</th>
            <th>Acciones</th>
        </tr>
    </thead>
    <tbody>
        <?php
            include("../CRUD/db.php");
            $sql = $conn->query("SELECT * FROM insumo");
            while ($datos = $sql->fetch_object()) {
        ?>
            <!-- Display existing records from the database -->
            <tr style="text-align: center; font-size: 16px">
                <td><?= $datos->pkid_insumo?></td>
                <td><?= $datos->nombre_insumo?></td>
                <td><?= $datos->categoria?></td>
                <td><?= $datos->cantidad_insumo?></td>
                <td><?= $datos->unidad?></td>
                <td style="text-align: center;">
                        <button class="btn-edit" style="width: 30%"><a href="../CRUD/insumoEditar.php?id=<?= $datos->pkid_insumo ?>"><i class="fas fa-edit" style="color: white;"></i></a></button>
                        <button class="btn-delete" style="width: 30%" onclick="confirmDelete(<?= $datos->pkid_insumo ?>)"><i class="fas fa-trash-alt" style="color: white;"></i></button><br>

                </td>
            </tr>
        <?php
            }
        ?>
    </tbody>
</table>

        </section>

        <script>
function confirmDelete(id) {
    Swal.fire({
    title: '¿Estás seguro?',
    text: "¡No podrás recuperar el registro!",
    showCancelButton: true,
    confirmButtonColor: '#1d71b8',
    cancelButtonColor: '#d33',
    confirmButtonText: 'Eliminar',
    cancelButtonText: 'Cancelar'
}).then((result) => {
    if (result.isConfirmed) {
      // Si el usuario confirma, redirige a la página de eliminación
        window.location.href = `../CRUD/insumoEliminar.php?id=${id}`;
    }
});
}

// // Comprobar si se ha enviado información del toast
// const params = new URLSearchParams(window.location.search);
//         const toastMessage = params.get('toastMessage');

//         if (toastMessage) {
//             Swal.fire({
//                 icon: 'success',
//                 title: toastMessage,
//                 showConfirmButton: false,
//                 timer: 3000,
//                 timerProgressBar: true,
//             });
//         }

        
</script>

<script src="../DAHSPAGS/nav.js"></script>
</body>
</html>