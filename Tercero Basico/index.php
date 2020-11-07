<!doctype html>
<html lang="es">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">

    <title>Contactenos</title>
  </head>
  <body>
  <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
      <a class="navbar-brand" href="../menu.html">TERCERO BÁSICO</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>
    </nav>
   <br>
    
        <div class="container">
    <div class="row">
      <div class="col-8">
      <button type="button" class="btn btn-dark"><a href="agregaralumno.html">Agregar Alumno</a></button>
      <button type="button" class="btn btn-secondary"><a href="../tareas.html"> Tarea</a></button>
    <button type="button" class="btn btn-success">Comportamiento</button>
    <button type="button" class="btn btn-danger">Calificaciones</button>
    <button type="button" class="btn btn-warning"><a href="buscar.php">Buscar</a></button>
      

      </div>
      <div class="col-4">
      <button type="button" class="btn btn-dark"><a href="../menu.html">Atras</a></button>
          <button type="button" class="btn btn-danger"><a href="../index.html">Salir</a></button>
          <div class="input-group flex-nowrap">
    <br>
    <br>
   </div>
   <div class="row">
      <div class="col-2">
      <a href="crearPdf.php"><input type="submit" value="PDF" name="pdf"> </a>
      </div>
      </div>
      <br>
      <br>
    
<?php
if (isset($_POST['palabra'])) {
  include('../Primero Basico/bd.php');
  include('buscar.php');
}

?>


          </div>
      </div>
    </div>
  <div class="container">
        <div class="col-md-12">
            <table class="table table-bordered table-sm">
                <thead>
                    <tr>
                        <th>Carné</th>
                        <th>Nombre (s)</th>
                        <th>Apellido (s)</th>
                        <th>Telefono</th>
                        <th>Dirección</th>
                        <th>Seccion</th>
                        <th>Acciones</th>

                    </tr>
                </thead>
                <tbody>
                    <?php
                    include('../Primero Basico/bd.php');
                        $query = "SELECT id_alumno, nombre, apellido, telefono, direccion, seccion FROM alumnos
                        Inner join secciones
                        on alumnos.id_seccion = secciones.id_seccion
                        INNER JOIN grados
                        on alumnos.id_grado = grados.id_grado
                        Where grado = 'Tercero Basico'
                        Order By seccion ASC;";
                        $resultados = mysqli_query($conn, $query);
                        while($row = mysqli_fetch_array($resultados)){ ?>
                            <tr>
                                <td> <?php echo $row['id_alumno'] ?> </td>
                                <td> <?php echo $row['nombre'] ?> </td>
                                <td> <?php echo $row['apellido'] ?> </td>
                                <td> <?php echo $row['telefono'] ?> </td>
                                <td> <?php echo $row['direccion'] ?> </td>
                                <td> <?php echo $row['seccion'] ?> </td>
                                <td>
                <a href="editar.php?id=<?php echo $row['id_alumno'] ?>" class="btn btn-secondary">
              <img src="../Primero Basico/imagenes/refresh.png" width="20">
                </a>
                <a href="eliminar.php?id=<?php echo $row['id_alumno'] ?>" class="btn btn-danger">
                <img src="../Primero Basico/imagenes/delete.png" width="20">
                </a>
            </td>
                            </tr>
                    <?php } ?>
                </tbody>
            </table>
            <br><br><hr><br>
    </div>
    </div>
<br>
<br>

    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
  </body>
</html>