<?php
header("access-control-allow-origin: *");
$hostname = 'localhost'; // Máquina local 
$database = 'asistencia_bd';
$username = 'root';
$password = '';
// Conectarse a MySQL con extensión MySQLi 
$mysqli = new mysqli($hostname, $username, $password, $database);

$queryConexion = "";
$queryView = array();
$query = "select c.id,c.tipo,p.nombre,p.localidad as cargo, p.nombre as proyecto,c.geoloc
FROM coordenadas c, proyectos p
where p.id = c.idcampo
union
select t1.id, t1.tipo, t1.nombre, t1.cargo, p1.nombre as proyecto,t1.geoloc
from (select c.id,c.idcampo,c.geoloc,c.tipo,concat(t.nombre, ' ', t.apellidos) as nombre, t.cargo ,t.proyectoid
FROM coordenadas c, trabajadors t
where t.id = c.idcampo) t1, proyectos p1
where t1.proyectoid = p1.id";


$resultado = $mysqli->query($query);

while ($rows = $resultado->fetch_assoc()) {
    $ubicacionid = trim ($rows['id']);
    $ubicaciontipo = trim ($rows['tipo']);
    $ubicacionnombre = trim ($rows['nombre']);
    $ubicacioncargo = trim ($rows['cargo']);
    $ubicacionproyecto = trim ($rows['proyecto']);
    $ubicaciongeoloc  = trim($rows['geoloc']);
    $latlon = explode(",", $ubicaciongeoloc);
    $latitud = $latlon[0];
    $longitud  = $latlon[1];
	$queryView [] = array (
        'id' => $ubicacionid,
        'tipo' => $ubicaciontipo,
        'nombre' => $ubicacionnombre,
         'cargo' => $ubicacioncargo,
        'proyecto' => $ubicacionproyecto,
         
        'latitud' => $latitud, 
        'longitud' => $longitud
    );
}

$queryConexion = json_encode($queryView);
echo $queryConexion;
