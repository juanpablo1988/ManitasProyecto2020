<?php 

include("bd.php");

if (isset($_GET['id'])){
    $id=$_GET['id'];
    $query="DELETE FROM alumnos WHERE id_alumno=$id";
    $resul=mysqli_query($conn,$query);
    if(!$resul) {
        die("Error");
} 
header("location:contactenos.php");
}
?>

