<?php
include('db.php'); // Asegúrate de que db.php se incluya correctamente

$consulta = "SELECT * FROM insumo;";
// Encabezados para indicar que es un archivo Excel
header("Content-Type: application/vnd.ms-excel; charset=utf-8");
header("Content-Disposition: attachment; filename=Insumos.xls");

echo '<table style="border-collapse: collapse;">';
echo '<caption style="font-weight: bold; font-size: 18px;">Insumos</caption>';
echo '<tr style="background-color: #009fe3; color: #FFF;">';
echo '<th style="border: 1px solid #FFF;">ID</th>';
echo '<th style="border: 1px solid #FFF;">Nombre del Insumo</th>';
echo '<th style="border: 1px solid #FFF;">Categoría</th>';
echo '<th style="border: 1px solid #FFF;">Cantidad</th>';
echo '<th style="border: 1px solid #FFF;">Unidad</th>';
echo '</tr>';

$resultado = mysqli_query($conn, $consulta);
while ($datos = mysqli_fetch_assoc($resultado)) {
    echo '<tr>';
    echo '<td style="border: 1px solid #000;">' . $datos['pkid_insumo'] . '</td>';
    echo '<td style="border: 1px solid #000;">' . $datos['nombre_insumo'] . '</td>';
    echo '<td style="border: 1px solid #000;">' . $datos['categoria'] . '</td>';
    echo '<td style="border: 1px solid #000;">' . $datos['cantidad_insumo'] . '</td>';
    echo '<td style="border: 1px solid #000;">' . $datos['unidad'] . '</td>';
    echo '</tr>';
}

echo '</table>';
?>
