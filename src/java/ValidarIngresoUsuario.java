/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Nesto
 */
@WebServlet(urlPatterns = {"/ValidarIngresoUsuario"})
public class ValidarIngresoUsuario extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet ValidarIngresoUsuario</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet ValidarIngresoUsuario at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        //processRequest(request, response);
         PrintWriter out = response.getWriter();
        String pass,user,email;
        Connection con=null;
        Statement stm=null;
        ResultSet rs=null;
        
        pass =request.getParameter("pass");
        user=request.getParameter("user");
        
         try{
            
        String url="jdbc:mysql://localhost:3306/soporte";
        String usuario="root";
        String contra="";
        
        Class.forName("com.mysql.jdbc.Driver").newInstance();
          con=DriverManager.getConnection(url,usuario,contra);
          
          if(con!=null)
              System.out.println("<h1>Se ha establesido conexion");
          
          stm=con.createStatement();
          
          rs=stm.executeQuery("select * from usuarios where usuario='"+user+"' and contra ='"+pass+"'");
          if(rs.next()){
               email = rs.getString(7);
              request.setAttribute("user",user);
              request.setAttribute("email",email);
              request.setAttribute("date",new java.sql.Date(System.currentTimeMillis()));
             request.getRequestDispatcher("tiket.jsp").forward(request, response); 
         
        }
          else{
          
             out.println("<script type='text/javascript'>");
             out.println("alert('Usuario o contraseña incorrecto');");
              out.println("location='index.html';");
             out.println("</script>");
            
             
          }
             
          
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(conexion.class.getName()).log(Level.SEVERE, null, ex);
        } catch (InstantiationException ex) {
            Logger.getLogger(conexion.class.getName()).log(Level.SEVERE, null, ex);
        } catch (IllegalAccessException ex) {
            Logger.getLogger(conexion.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(conexion.class.getName()).log(Level.SEVERE, null, ex);
        }
        finally{
        if(con != null){
            try {
                con.close();
                stm.close();
                
                
                
                
            } catch (SQLException ex) {
                Logger.getLogger(conexion.class.getName()).log(Level.SEVERE, null, ex);
            }
        
        }
        }
        
        
        
        
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
