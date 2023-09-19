<!DOCTYPE html>
<html>
<head>
    <title>Redireccionar después de SweetAlert en PHP</title>
    <!-- Agrega los enlaces a las bibliotecas de SweetAlert y jQuery -->
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@10"></script>
    <style>
        /* Establece el fondo personalizado para el cuerpo */
        body {
            background-image: url('../IMG/fondo body 2.jpg'); /* Ruta de la imagen de fondo */
            background-size: cover; /* Ajusta la imagen para cubrir todo el cuerpo */
            background-repeat: no-repeat; /* Evita la repetición de la imagen de fondo */
            font-family: Arial, sans-serif; /* Fuente predeterminada para el cuerpo */
        }

        /* Estilos personalizados para el SweetAlert */
        .swal-title {
            font-size: 24px;
            color: #ff0000;
        }

        .swal-html-container {
            font-size: 16px;
            color: #0000ff;
        }
    </style>
</head>
<body>

<?php
// Supongamos que aquí decides mostrar el SweetAlert y luego redirigir
echo "<script>
    Swal.fire({
        title: '¡Heyy!',
        text: 'Vuelve a iniciar sesión',
        imageUrl: '../IMG/DulceEnojado.jpg',
        imageWidth: 400,
        imageHeight: 300,
        imageAlt: 'Custom image',
        customClass: {
        title: 'swal-title', // Clase CSS personalizada para el título
        htmlContainer: 'swal-html-container' // Clase CSS personalizada para el contenedor HTML
},
        didDestroy: () => {
        // Redirigir a la página deseada después de que se cierre el SweetAlert
        window.location.href = '../INICIOPAGS/Cuenta.php';
}
});
</script>";
?>

</body>
</html>
