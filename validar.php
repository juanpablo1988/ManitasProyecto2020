<?php
$usuario=$_POST['usuario'];
$clave=$_POST['clave'];
 if($usuario=="admin" and $clave=="admin"){
    header("location:menu.html");
 }else{
    echo '<script language="javascript">'; 
echo 'alert("Usuario o Contraseña Incorrecta")' ; 
echo '</script>'; 
 }
?>
