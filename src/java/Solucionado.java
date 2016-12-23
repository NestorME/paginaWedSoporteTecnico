/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Nesto
 */
@WebServlet(urlPatterns = {"/Solucionado"})
public class Solucionado extends HttpServlet {
private static Connection connBD = null;
    Statement estSQL;
    ResultSet rs;
    String estadoPagina =  "nada" ; //no llega ningun parametro en la URL
     
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException
    {
        response.setContentType("text/html");        
        PrintWriter out = response.getWriter();
        out.println("<html>");
        out.println("<head>");
        out.println("<title>KEDB</title>");        
        response.addHeader("Pragma","no-cache");
        out.println("</head>");
        out.println("<body>");
         
        try
        {     //Obtener el estado (status-->sts)
          estadoPagina =  request.getParameter("sts");
          if(estadoPagina == null)
            estadoPagina="nada";
          //En caso de que el usuario pulso en el boton buscar
          if( estadoPagina.equals("buscar" ) )
                out.println("El registro buscado, si es encontrado sera marcado con color rojo.");
        }
        catch( Exception exx )
        {
           exx.printStackTrace();
        }
         
        //Desplegar los datos del registro actual en el navegador
        out.println(" </FONT> </b> <br> </center> ");
        out.println("<br> ");
       
        out.println("<table width='100%' align='center' border='1'> ");
        out.println(" <tr bgcolor='#CCFF66' >");
        //Columnas de la tabla de la BD
        out.println("<td><b>ID  </b></td>  ");
        out.println("<td> <b> FOLIO </b> </td> ");
        out.println("<td > <b> IMPLEMENTADO</b> </td>  ");
        out.println("<td  > <b> FECHA </b> </td>  ");
        out.println("<td  > <b> DESCRIPCION</b> </td>  ");
        out.println("<td  > <b> PROCEDIMIENTO </b> </td>  ");
        out.println("<td  > <b> RIESGO </b> </td>  ");
        out.println("<td  > <b> PRIORIDAD</b> </td>  ");
        out.println("<td  > <b> HORAS </b> </td>  ");
        out.println("<td  > <b> PROGRAMACION </b> </td>  ");
        out.println("<td  > <b> RESPONSABLE </b> </td>  ");
        out.println(" </tr>");
        
       
        try
        {
            conectarBD();
            rs = estSQL.executeQuery("SELECT * FROM soluciones");
            while( rs.next() )    //Mientras haya una sig. tupla
            {   
               
              //Mostrar los datos del registro actual en el navegador
              out.println(" <tr>");
            out.println(" <td>"+ rs.getInt("folio")+"</td>");
            out.println(" <td>"+ rs.getString("id")+"</td>");
            out.println(" <td>"+ rs.getString("implementado")+"</td>");
            out.println(" <td>"+ rs.getString("fechaimple")+"</td>");
            out.println(" <td>"+ rs.getString("descripcion")+"</td>");
            out.println(" <td>"+ rs.getString("procedimiento")+"</td>");
            out.println(" <td>"+ rs.getString("riesgo")+"</td>");
            out.println(" <td>"+ rs.getString("prioridad")+"</td>");
            out.println(" <td>"+ rs.getString("horas")+"</td>");
            out.println(" <td>"+ rs.getString("programacion")+"</td>");
            out.println(" <td>"+ rs.getString("responsable")+"</td>");
            out.println(" </tr>");
            
            } //Fin de while que recorre tuplas
             
        }
        catch( SQLException sqlex )
        {
            out.println(" 3rror al conectar en la pagina principal");
            sqlex.printStackTrace();
        }
         
        out.println("</table>");
        out.println("<br><br>");
        out.println("</body>");
        out.println("</html>");
    }
     
    //Conectar con MySQL y devuelve true solo en caso de que
    //Se haya obtenido una conexion a la BD especificada
    public boolean conectarBD() throws SQLException
    {
        try
        {
      //seleccionar el driver
            Class.forName("com.mysql.jdbc.Driver");
      //especificar datos de conexion
            connBD = DriverManager.getConnection("jdbc:mysql://localhost/soporte","root","");
            estSQL = connBD.createStatement();
      //Verificar si se obtuvo la conexion correctamente
            if (connBD == null )
                return false;   //No se pudo conectar
            return true;
        }
        catch ( SQLException e )
        {
            System.out.println("ERROR: 3xcepcion al conectar la BD ");
            return false;
        }
        catch( Exception es )
        {
            System.out.println("ERROR: 3xcepcion al conectar la BD ");
            return false;
        }
    }

}
