/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package servlet;
import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
public class LoginServlet extends HttpServlet {
  public void doPost(HttpServletRequest request, HttpServletResponse response)
      throws IOException {
    String userid = request.getParameter("userid");
    String password = request.getParameter("password");
    /*
     * try{
     *      if(password.equals("RETRIEVE_DATABASE_PASSWORD(userid)"){
     * 
     *                HttpSession session = request.getSession(true);
     *                session.setAttribute("loggedin", new Boolean(true));
     *                session.setAttribute("userid", userid);
     *                session.setAttribute("name", "RETRIEVE_DATABASE_NAME(userid)");
     *                response.sendRedirect("index.jsp");
     *      } 
     * }
     * catch(Exception e){
     *      response.sendRedirect("login.jsp");
     * }
     */
    if (userid.equals("smithab") && password.equals("lab07")) {
      HttpSession session = request.getSession(true);
      session.setAttribute("loggedin", new Boolean(true));
      session.setAttribute("userid", userid);
      response.sendRedirect("index.jsp");
    }
    else if (userid.equals("catronjc") && password.equals("s476juus")) {
      HttpSession session = request.getSession(true);
      session.setAttribute("loggedin", new Boolean(true));
      session.setAttribute("userid", userid);
      session.setAttribute("name", "Fail!");
      response.sendRedirect("index.jsp");
    }
    else {
      response.sendRedirect("login.jsp");
    }
  }
}
