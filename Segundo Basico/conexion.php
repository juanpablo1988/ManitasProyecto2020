<?php
include('../Primero Basico/bd.php');


if (isset($_POST['guardar'])){
    $nom=$_POST['nombre'];
    $ape=$_POST['apellido'];
    $tel=$_POST['telefono'];
    $direccion=$_POST['direccion'];
    $grado=$_POST['grado'];
    $seccion=$_POST['seccion'];
    $query= "INSERT INTO alumnos (nombre, apellido, telefono, direccion, id_grado, id_seccion) VALUES('$nom','$ape','$tel','$direccion','$grado','$seccion')";
    $resultado=mysqli_query($conn,$query);
    if(!$resultado){
        die("Error al Guardar");
    }
    header("location:index.php");
}


?>


