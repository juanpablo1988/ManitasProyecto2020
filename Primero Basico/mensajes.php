<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Mensajes</title>
</head>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
    <body>
    <table width="100%">
      <tr>
    <td width="33.33%">
        <button type="button" class="btn btn-outline-warning btn-lg btn-block"><a href="productos.html">Productos/Servicios</a> </button>
<td width="33.33%">
    <button type="button" class="btn btn-outline-info btn-lg btn-block"><a href="tiendas.html">Tiendas</a>   </button>
    </td>
    <td width="33.33%"> 
        <button type="button" class="btn btn-outline-danger btn-lg btn-block"><a href="contactenos.php">Contáctenos </a>   </button>
        </td>
</table>
<br>
<br>
<div class="container">
        <div class="col-md-12">
            <table class="table table-bordered table-sm">
                <thead>
                    <tr>
                        <th>id_alumnno</th>
                        <th>Nombre</th>
                        <th>apellido</th>
                        <th>direccion</th>
                        <th>email</th>
                        <th>Grado</th>
                        <th>Seccion</th>

                    </tr>
                </thead>
                <tbody>
                    <?php
                    include('bd.php');
                        $query = "SELECT * FROM alumno";
                        $resultados = mysqli_query($conn, $query);
                        while($row = mysqli_fetch_array($resultados)){ ?>
                            <tr>
                                <td> <?php echo $row['id_alumno'] ?> </td>
                                <td> <?php echo $row['nombre'] ?> </td>
                                <td> <?php echo $row['apellido'] ?> </td>
                                <td> <?php echo $row['direccion'] ?> </td>
                                <td> <?php echo $row['email'] ?> </td>
                                <td> <?php echo $row['grado'] ?> </td>
                                <td> <?php echo $row['seccion'] ?> </td>
                            </tr>
                    <?php } ?>
                </tbody>
            </table>
            <br><br><hr><br>
    </div>
    </div>
    <br>
        
    <table class="table">
  <thead class="thead-dark">
    <tr>
      <th scope="col-4">PBX:53175562</th>
      <th scope="col-4">DIRECCION: 28 calle B Mixco</th>
      <th scope="col-4">CARNÉ:201805637</th>
      <th scope="col-4">NOMBRE: Juan Pablo Zacarias Paiz</th>
    </tr>
  </thead>
  <tbody>
    <tr>
</table>
</div>
<br><br><br>
<!-- Optional JavaScript -->
<!-- jQuery first, then Popper.js, then Bootstrap JS -->
<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
</body>
</html>
