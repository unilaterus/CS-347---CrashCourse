/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package servlet;
import java.util.*;
import java.sql.*;
import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
public class LoginServlet extends HttpServlet {
  public void doPost(HttpServletRequest request, HttpServletResponse response)
      throws IOException {
    String userid = request.getParameter("userid");
    String password = request.getParameter("password");
    String loginQuery = ("SELECT * from users where userid=" + userid);    
    try{
    Connection con = DriverManager.getConnection("jdbc:mysql://mydbinstance.cm5mhbqefnwq.us-east-1.rds.amazonaws.com/musicworld", "awsuser", "mypassword");
        
     Statement stat = (Statement) con.createStatement();
     ResultSet rs = stat.executeQuery(loginQuery);
     while (rs.next()) {
        if(rs.getString(2).equals(password)){
            HttpSession session = request.getSession(true);
            session.setAttribute("loggedin", new Boolean(true));
            session.setAttribute("userid", userid);
            session.setAttribute("firstname", rs.getString(3));
            session.setAttribute("lastname", rs.getString(4));
            response.sendRedirect("index.jsp");
        }
     }
     response.sendRedirect("register.jsp");
    }
    catch (Exception e){
         throw new IOException(e.getMessage());
       //  response.sendRedirect("index.jsp");
    }
    /*
    if (userid.equals("catronjc") && password.equals("s476juus")) {
      HttpSession session = request.getSession(true);
      session.setAttribute("loggedin", new Boolean(true));
      session.setAttribute("userid", userid);
      session.setAttribute("name", "Fail!");
      response.sendRedirect("index.jsp");
    }
    else {
      response.sendRedirect("login.jsp");
    }
     * 
     */
  }
}
