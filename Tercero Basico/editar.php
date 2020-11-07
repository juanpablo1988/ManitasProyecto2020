<?php
include("../Primero Basico/bd.php");

if (isset($_GET['id'])){
    $id=$_GET['id'];
    $query="SELECT id_alumno, nombre, apellido, telefono, direccion, grado, seccion FROM alumnos
    Inner join secciones
    on alumnos.id_seccion = secciones.id_seccion
    INNER JOIN grados
    on alumnos.id_grado = grados.id_grado
    Where id_alumno=$id;";
    $result=mysqli_query($conn,$query);
    if (mysqli_num_rows($result)==1){
       $row = mysqli_fetch_array($result);
       $id_alumno= $row['id_alumno'];
       $nombres=$row['nombre'];
       $apellidos=$row['apellido'];
       $direccions=$row['telefono'];
       $emails=$row['direccion'];
       $grados=$row['grado'];
       $seccions=$row['seccion'];   
    }
}
    if(isset($_POST['update'])){
        $codigo=$_POST['id_alumnoo'];
        $nombresito=$_POST['nombree'];
        $apellidito=$_POST['apellidoo'];
        $direccionp=$_POST['telefonoo'];
        $pues=$_POST['direccionn'];
        $cont=$_POST['gradoo'];
        $direcc=$_POST['seccionn'];
       
        $query="UPDATE alumnos SET id_alumno='$codigo', nombre='$nombresito', apellido='$apellidito', telefono='$direccionp', direccion='$pues' WHERE id_alumno=$id";
        mysqli_query($conn,$query);
        header("location:index.php");
    }
?>

<?php include("../Primero Basico/includes/header.php")?>
<div class="container">
    <div class="row">
        <div class="col-md-4 mx-auto">
            <div class="card-body">
                <form action="editar.php?id=<?php echo $_GET['id']; ?>" method="POST">
                    <div class="form-group">
                        <input type="text" name="id_alumnoo" value="<?php echo $id_alumno; ?>" class="form-control" placeholder="Actualizar id_alumno">
                    </div>
                        <div class="form-group">
                        <input type="text" name="nombree" value="<?php echo $nombres; ?>" class="form-control" placeholder="Actualizar nombre">
                        </div>
                        <div class="form-group">
                        <input type="text" name="apellidoo" value="<?php echo $apellidos; ?>" class="form-control" placeholder="Actualizar Apellido">
                        </div>
                        <div class="form-group">
                        <input type="text" name="telefonoo" value="<?php echo $direccions; ?>" class="form-control" placeholder="Actualizar direccion">
                        </div>
                        <div class="form-group">
                        <input type="text" name="direccionn" value="<?php echo $emails; ?>" class="form-control" placeholder="Actualizar Correo">
                        </div>
                        <div class="form-group">
                        <input type="text" name="gradoo" value="<?php echo $grados; ?>" class="form-control" placeholder="Actualizar Grado">
                        </div>
                        <div class="form-group">
                        <input type="text" name="seccionn" value="<?php echo $seccions; ?>" class="form-control" placeholder="Actualizar Seccion">
                        </div>

                        <button class="btn btn-success btn-block" name="update">
                        Actualizar
                        </button>
                 </form>
            </div>
        </div>
    </div>
</div>
<?php include("../Primero Basico/includes/footer.php")?>