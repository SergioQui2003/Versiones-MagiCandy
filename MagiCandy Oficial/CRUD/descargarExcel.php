<?php
include('db.php'); // Asegúrate de que db.php se incluya correctamente

$consulta = "SELECT * FROM produccion;";
// Encabezados para indicar que es un archivo Excel
header("Content-Type: application/vnd.ms-excel; charset=utf-8");
header("Content-Disposition: attachment; filename=Ordenes.xls");

echo '<table style="border-collapse: collapse;">';
echo '<caption style="font-weight: bold; font-size: 18px;">Ordenes</caption>';
echo '<tr style="background-color: #009fe3; color: #FFF;">';
echo '<th style="border: 1px solid #FFF;">ID</th>';
echo '<th style="border: 1px solid #FFF;">Fecha Inicio</th>';
echo '<th style="border: 1px solid #FFF;">Fecha Final</th>';
echo '<th style="border: 1px solid #FFF;">Producto</th>';
echo '<th style="border: 1px solid #FFF;">Cantidad Producir</th>';
echo '<th style="border: 1px solid #FFF;">Lote</th>';
echo '<th style="border: 1px solid #FFF;">Calidad del Producto</th>';
echo '<th style="border: 1px solid #FFF;">Observaciones</th>';
echo '</tr>';

$resultado = mysqli_query($conn, $consulta);
while ($datos = mysqli_fetch_assoc($resultado)) {
    echo '<tr>';
    echo '<td style="border: 1px solid #000;">' . $datos['pkid_produccion'] . '</td>';
    echo '<td style="border: 1px solid #000;">' . $datos['fecha_inicio'] . '</td>';
    echo '<td style="border: 1px solid #000;">' . $datos['fecha_fin'] . '</td>';
    echo '<td style="border: 1px solid #000;">' . $datos['producto_producir'] . '</td>';
    echo '<td style="border: 1px solid #000;">' . $datos['cantidad_producir'] . '</td>';
    echo '<td style="border: 1px solid #000;">' . $datos['lote'] . '</td>';
    echo '<td style="border: 1px solid #000;">' . $datos['calidad_producto'] . '</td>';
    echo '<td style="border: 1px solid #000;">' . $datos['observaciones'] . '</td>';
    echo '</tr>';
}

echo '</table>';
?>
