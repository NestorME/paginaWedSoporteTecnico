<%-- 
    Document   : administrar
    Created on : 27/10/2016, 09:42:47 PM
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
    <link rel="icon" href="../../favicon.ico">

    <title>KEDB</title>

    <!-- Bootstrap core CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet">

    <!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
    <link href="css/ie10-viewport-bug-workaround.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="navbar.css" rel="stylesheet">

    <!-- Just for debugging purposes. Don't actually copy these 2 lines! -->
    <!--[if lt IE 9]><script src="../../assets/js/ie8-responsive-file-warning.js"></script><![endif]-->
    <script src="js/ie-emulation-modes-warning.js"></script>
    <script language="javascript" type="text/javascript"> 
       
       function ChangePage(){
        var newPage = "problemas";   
        document.getElementById("IFrame1").src = newPage;
        } 
    </script> 

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
  </head>

  <body>

    <div class="container">

      <!-- Static navbar -->
      <nav class="navbar navbar-default">
        <div class="container-fluid">
          <div class="navbar-header">
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
              <span class="sr-only">Toggle navigation</span>
              <span class="icon-bar"></span>
              <span class="icon-bar"></span>
              <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="index.html">Inicio </a>
            <a class="navbar-brand" href="solucion.jsp">Soluciones</a>
          </div>
          
        </div><!--/.container-fluid -->
      </nav>

      <!-- Main component for a primary marketing message or call to action -->
      <div class="jumbotron">
        <fieldset>
      <legend>KEDB Incidentes.</legend>
         <iframe width="954" height="380"  src="KEDBDarSolucion" id="IFrame1"></iframe> 
    </fieldset>
        <p>
            <input class="btn btn-lg btn-primary" type="button" value="Problemas" onclick="ChangePage()" /> 
       </p>
        
      </div>

      <form class="starter-template" method="post" action="soluciones">

        <label> <h3>RFC</h3></label><br>
        <label>Folio</label><input type="text" name="folio" placeholder="Folio"required ><br>

        <label>Imprementacion</label>
        <input type="text" class="form-control" name="implementado" placeholder="Implementado por:"required>
        <input type="date" class="form-control" name="fechaImple" placeholder="fecha de implementacion"required><br>
        
        <label>Descrpcion de la falla</label><br>
        <textarea name="descripcion" rows="10" cols="40" class="form-control" placeholder="Descripcion del problema."required></textarea><br>
        
        <label>Procedimiento</label><br>
        <textarea name="procedimiento" rows="10" cols="40" class="form-control" placeholder="Procedimiento"required></textarea><br>
        
        <label>Riesgo de impacto.</label>
        <select name="riesgo" class="form-control" >
          <option value="alto">alta</option>
          <option value="medio">medio</option>
          <option value="bajo">bajo</option>
        </select>
        
        <label>Prioridad</label>
        <select name="prioridad" class="form-control">
          <option value="critica">critica</option>
          <option value="alta">alta</option>
          <option value="media">media</option>
          <option value="bajo">baja</option>
          <option value="planificada">planificada</option>
        </select>
        
        <label>Tiempo de resolucion</label>
        <select name="horas" class="form-control">
          <option value="1 hora">1 hora</option>
          <option value="8 horas">8 horas</option>
          <option value="24 horas">24 horas</option>
          <option value="48 horas">48 horas</option>
          <option value="planificada">Planificada</option>
        </select><br>
        
        <label>Resolucion Programada</label>
        <input type="date" name="programacion" class="form-control" placeholder="Fecha de programacion"required><br>
        <label>Responasable de la resolucion</label>
        <input name="responsable" class="form-control" placeholder="Cambio por:"required><br>
        
        <button type="sumit" class="btn btn-success">Enviar</button>
        <br><br>








      </form>

<form class="starter-template" method="post" action="Eliminar">
          <label>Id Incidencia a eliminar</label><br>
          <input type="text" name="id" placeholder="Id Incidencia"><br><br>
          <button type="sumit" onclick="return confirm('seguro que desea submit?')" class="btn btn-danger">Eliminar</button><br><br>

        </form>
      <form class="starter-template" method="post" action="EliminarProb">
          <label>Id Problema a eliminar</label><br>
          <input type="text" name="idp" placeholder="Id Incidencia"><br><br>
          <button type="sumit" onclick="return confirm('seguro que desea submit?')" class="btn btn-danger">Eliminar</button><br><br>

        </form>

<footer>
        <h1 class="pull-right"><a href="#">Back to top</a></h1>
         <p>&copy; 2016 EIS Company, Inc.</p>
      </footer>


    </div> <!-- /container -->


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
