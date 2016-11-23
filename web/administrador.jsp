<%-- 
    Document   : administrador
    Created on : 26/10/2016, 07:38:49 PM
    Author     : Nesto
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="Andres Bernal">
    

    <title>ADMINISTRADOR</title>

    
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/ie10-viewport-bug-workaround.css" rel="stylesheet">
    <link href="css/starter-template.css" rel="stylesheet">
    <script src="js/ie-emulation-modes-warning.js">

    </script>

  </head>

  <body>
    <style>
body{

  background: url("fondo3.jpg");
    background-position: center;

    background-repeat:no-repeat;

    background-attachment: fixed;
    color: red;
}

</style>

    <nav class="navbar navbar-inverse navbar-fixed-top" style='background-color:#004d99'>
      <div class="container">
        <div class="navbar-header">
          <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <a class="navbar-brand" href="index.html">Inicio</a>
        </div>
        <div id="navbar" class="collapse navbar-collapse">
        
        </div>
      </div>
    </nav>

    <div class="container" align="center" width="50%">
         <br>
         <br>
      <div class="starter-template">
        <h1>Ingresa Datos De Administrador</h1>
        
      </div>

       
       <form class="form" role="form" method="post" action="ValidarIngresoSuperUsuario">
       
      <div class="form-group" role="form">
        <label>Ingresa tu usuario.</label>
        <input type="text" name="user" class="form-control" placeholder="Usuario">
      </div>
      <div class="form-group" role="form">
      <label>Ingresa tu contraseña.</label>
      <input type="password" name="password" class="form-control" placeholder="Contraseña">
      <br>
      <button type="submit" class="btn btn-success">Ingresar</button>
      </div>

      
       </form>
      


       
    </div>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
    <script>window.jQuery || document.write('<script src="js/vendor/jquery.min.js"><\/script>')</script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/ie10-viewport-bug-workaround.js"></script>
  </body>
</html>
