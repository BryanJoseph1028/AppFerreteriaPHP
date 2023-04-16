<?php
 class Conexion{
    $usuario = "USR_FERRETERIA";
    $contraseña = "ferreteria";
    $servidor = "localhost";
    $instancia= "XE";

    $conn = oci_connect($usuario, $contraseña, "(DESCRIPTION =(ADDRESS = (PROTOCOL = TCP)(HOST = $servidor)(PORT = 1521)) (CONNECT_DATA =  (SERVER = DEDICATED)  (SERVICE_NAME = $instancia) ))");

    if (!$conn) {
    $error = oci_error();
    echo "Error de conexión: " . $error['message'];
    } else {
    echo "Conexión exitosa";
     }
}
?>