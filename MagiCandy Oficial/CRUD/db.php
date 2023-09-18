<?php
// Conectar a la base de datos (debes configurar tus credenciales)
$servername = 'localhost';
$username = 'root';
$password = '';
$dbname = 'magicandy';
$puerto = "3310";

$conn =  new mysqli ($servername,$username,$password,$dbname,$puerto);

if (!$conn){
    die ("Error de conexión" .mysqli_connect_error());

}else{
    //echo "Conexion exitosa";
}

?>