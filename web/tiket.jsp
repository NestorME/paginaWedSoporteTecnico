<%-- 
    Document   : tiket
    Created on : 17/10/2016, 06:34:13 PM
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
    

    <title>Incidentes.</title>

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
          <a class="navbar-brand" href="#">Reporte de incidentes.</a>
        </div>

      </div>
    </nav>
    <div class="container" align="center" width="50%">
       <div class="form-group" role="form" > 
           
      <form class="starter-template" method="post" action="EnvioReporte">
          <%
            String msg = (String)request.getAttribute("user");
            %>
         <% session.setAttribute("name",msg); %>
          
      <h1 >Bienvenido  <%= request.getAttribute("user")%></h1>
      
      <br>
     
     <h2>Fecha y Hora </h2> <br>

      <input  type="datetime" name="fecha" placeholder="Año/Mes/Dia"class="form-control" value="<%= request.getAttribute("date")%>"required >
      
      
      <br>
     <h2>Falla</h2> 
      <br>
      <select  name="falla" class="form-control"required>
   		
      <option >login</option> 
   		<option >base de datos</option> 
   		<option >interrupcion</option>
   		<option >velocidad</option> 
   		<option >funcionalidad</option> 
                <option >otros</option>
    
   		</select>
      
      


      <br>
      <h2>Descripcion.</h2>
      <br>
      <textarea name="descripcion" class="form-control" rows="10" cols="40" placeholder="descripcion"required></textarea>
     <br>
     <h2>Ingrese Email</h2>
     <input type="email" name="emailT" class="form-control"  placeholder="Ingrese@Email.com" value="<%= request.getAttribute("email")%>">
     <br>
     <button type="submit" class="btn btn-success">Ingresar.</button>
     </div>
      
      </form>


      
    </div>



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
