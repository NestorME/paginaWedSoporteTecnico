<%-- 
    Document   : newjsp
    Created on : 12/10/2016, 01:36:27 PM
    Author     : Nesto
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <meta name="description" content="">
    <meta name="author" content="">
    

    <title>Registro.</title>

    <!-- Bootstrap core CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet">

    <!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
    <link href="css/ie10-viewport-bug-workaround.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="css/starter-template.css" rel="stylesheet">

    <!-- Just for debugging purposes. Don't actually copy these 2 lines! -->
    <!--[if lt IE 9]><script src="../../assets/js/ie8-responsive-file-warning.js"></script><![endif]-->
    <script src="js/ie-emulation-modes-warning.js"></script>

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
  </head>

  <body>

    <nav class="navbar navbar-inverse navbar-fixed-top" style='background-color:#004d99'>
      <div class="container">
        <div class="navbar-header">
          <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <a class="navbar-brand" href="index.html" style='color:white'>Inicio.</a>
        </div>

      </div>
    </nav>

   <div class="container" align="center" width="50%">
         <br>
         <br>
      <div class="starter-template">
        
        <p class="lead">Registrate.</p>
      </div>

       
       <form class="form" role="form" action="conexion" method="post"  >
       <div class="form-group" role="form" > 
      <label >Nombre</label>
      <input type="text" name="nombre" class="form-control" placeholder="Nombre" required>
      </div>
      
      <div class="form-group" role="form">
      <label>Apellido</label>
      <input type="text" name="apellido" class="form-control" placeholder="Apellido" required>
      </div>
      
      <div class="form-group" role="form">
      <label>Domicilio</label>
      <input type="text" name="domicilio" class="form-control" placeholder="Domicilio" required>
      </div>

      <div class="form-group" role="form">
      <label>Usuario</label>
      <input type="text" name="usuario" class="form-control" placeholder="Usuario" required>
      </div>

      <div class="form-group" role="form">
      <label>contraseña.</label>
      <input type="password" name="password" class="form-control" placeholder="contraseña" required>

      <div class="form-group" role="form">
        <label>Correo electronico.</label>
        <input type="Email" name="email" class="form-control" placeholder="Email@electronico" required>


      </div>


      <br>
      <button type="submit" class="btn btn-success">Registrar</button>
      </div>

      
       </form>
      


       
    </div><!-- /.container -->



    <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
    <script>window.jQuery || document.write('<script src="../../assets/js/vendor/jquery.min.js"><\/script>')</script>
    <script src="js/bootstrap.min.js"></script>
    <!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
    <script src="js/ie10-viewport-bug-workaround.js"></script>
  </body>
</html>
