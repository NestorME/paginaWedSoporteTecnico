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
@WebServlet(urlPatterns = {"/problemas"})
public class problemas extends HttpServlet {

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
        
         //Desplegar los datos del registro actual en el navegador
        out.println(" </FONT> </b> <br> </center> ");
        out.println("<br> ");
        out.println("<table align='center' width='100%' border='1' cellpadding='0' cellspacing='0'>  ");
        out.println("<tr> ");
        out.println("<td> ");
        out.println("<table width='100%' align='center' border='0' cellpadding='0' cellspacing='0'> ");
        out.println(" <tr bgcolor='#CCFF66' >");
         
        //Columnas de la tabla de la BD
        out.println("<td align='center width='3%' > <b> ID </b> </td>  ");
        out.println("<td align='left'  > <b> Numero de fallas  </b> </td> ");
        out.println("<td align='center' > <b> Nombre de la falla </b> </td>  ");
        out.println(" </tr>");
         
       
        try
        {
            conectarBD();
            rs = estSQL.executeQuery("SELECT * FROM problemas");
            while( rs.next() )    //Mientras haya una sig. tupla
            {     // en caso de que el estado sea buscando
               
              //Mostrar los datos del registro actual en el navegador
            out.println(" <td>"+ rs.getInt("id")+" </td>");
            out.println(" <td>"+ rs.getString("numprob")+"</td>");
            out.println(" <td>"+ rs.getString("nombrefalla")+"</td>");
          
            out.println(" </tr>");
            
            } //Fin de while que recorre tuplas
             
        }
        catch( SQLException sqlex )
        {
            out.println(" 3rror al conectar en la pagina principal");
            sqlex.printStackTrace();
        }
         
        out.println("</table>");
        out.println("</td> ");
        out.println("</tr> ");
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
