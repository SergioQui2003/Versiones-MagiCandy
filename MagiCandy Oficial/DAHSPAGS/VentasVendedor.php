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
                <a href="../DAHSPAGS/VendedorInicio.php">
                    <i class='bx bx-home' ></i>
                    <span class="link_name">Inicio</span>
                </a>
                <ul class="sub-menu blank">
                    <li><a class="link_name" href="../DAHSPAGS/VendedorInicio.php">Inicio</a></li>
                </ul>
            </li>

            <!-- HOJA DE PERFIL -->
            <li>
                <a href="../DAHSPAGS/VendedorPerfil.php">
                    <i class='bx bx-id-card' ></i>
                    <span class="link_name">Perfil</span>
                </a>
                <ul class="sub-menu blank">
                    <li><a class="link_name" href="../DAHSPAGS/VendedorPerfil.php">Perfil</a></li>
                </ul>
                    </li>
            </li>
            <!-- HOJA DE VENTAS -->
                <li>
                    <div class="iocn-link">
                    <a href="../DAHSPAGS/VentasVendedor.php">
                    <i class='bx bx-collection' ></i>
                    <span class="link_name">Ventas</span>
                    </a>
            <i class='bx bxs-chevron-down arrow' ></i>
                </div>
                    <ul class="sub-menu">
                    <li><a class="link_name" href="#">Ventas</a></li>
                    <li><a href="../DAHSPAGS/VentasVendedor.php">- Reporte de ventas</a></li>
                    </ul>
                </li>
            <li>

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
                    <H3>Reporte de ventas</H3><br>
                    
                </div>

            </section>

            <section class="form-production">

                    <label for="produccio-num">Gráficos de reportes </label><br><br><hr><br>
                    <form action="">

                    <div>
                        <canvas id="myChart"></canvas>
                    </div>

    <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
    
    <script>
        const ctx = document.getElementById('myChart');
    
        // Define el color "lightblue" para todas las barras
        const colorBarra = 'lightblue';
    
        new Chart(ctx, {
                type: 'bar',
                data: {
                labels: ['Febrero', 'Marzo', 'Mayo', 'Junio', 'Julio', 'Agosto'],
                datasets: [{
                    label: 'Ventas',
                    data: [200, 340, 380, 400, 430, 521],
                    borderWidth: 1,
                    // Asigna el color "lightblue" a todas las barras
                    backgroundColor: colorBarra
                }]
            },
                options: {
                scales: {
                y: {
                beginAtZero: true
                    }
                }
            }
        });
    </script>
                        
                    </form>

            </section>

            <script src="../DAHSPAGS/nav.js"></script>

    </body>
    </html>

<?php
}
?>