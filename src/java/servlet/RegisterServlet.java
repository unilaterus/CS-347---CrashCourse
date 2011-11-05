/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package servlet;
import java.io.*;
import java.util.*;
import java.sql.*;
import javax.servlet.*;
import javax.servlet.http.*;
public class RegisterServlet extends HttpServlet {
  public void doPost(HttpServletRequest request, HttpServletResponse response)
      throws IOException {
    String userid = request.getParameter("userid");
    String password = request.getParameter("password");
    String firstname = request.getParameter("firstname");
    String lastname = request.getParameter("lastname");
    String updateStr = ("INSERT INTO users VALUES (" + "'" + userid + "','" + password + "','" + firstname + "','" + lastname + "')");
    
    try{
    Connection con = DriverManager.getConnection("jdbc:mysql://mydbinstance.cm5mhbqefnwq.us-east-1.rds.amazonaws.com/musicworld", "awsuser", "mypassword");
        
     Statement stat = (Statement) con.createStatement(); 
     ArrayList<String> results = new ArrayList<String>();
     int rs = stat.executeUpdate(updateStr);
     if (rs == 1){
         response.sendRedirect("successful.jsp");
     }
     else {
         response.sendRedirect("index.jsp");
     }
    }
    catch (Exception e){
         //e.printStackTrace(new java.io.PrintStream);
         response.sendRedirect("register.jsp");
    }
  }
}