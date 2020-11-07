<?php

include 'bd.php';

$buscar = $_POST['buscar']; 

$SQL_BUSCAR = "SELECT id_alumno, nombre, apellido, telefono, direccion, seccion 
FROM alumnos 
Inner join secciones on alumnos.id_seccion = secciones.id_seccion
INNER JOIN grados on alumnos.id_grado = grados.id_grado
Where grado = 'Primero Basico'
WHERE nombre LIKE '%".$buscar."%' OR apellido LIKE '%".$buscar."%' OR direccion LIKE '%".$buscar."%'
Order By seccion ASC";

$sql_query = mysqli_query($conn, $SQL_BUSCAR);


?>