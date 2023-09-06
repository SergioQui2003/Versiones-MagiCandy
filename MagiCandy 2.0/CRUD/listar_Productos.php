<?php
// Conexión a la base de datos o carga de datos desde otra fuente
$productos = array(); // Aquí deberías obtener los productos

foreach ($productos as $producto) {
    echo '<li>ID: ' . $producto['id'] . ', Nombre: ' . $producto['nombre'] . ', Categoría: ' . $producto['categoria'] . ', Cantidad: ' . $producto['cantidad'] . '</li>';
}
?>
