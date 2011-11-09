/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package servlet;
import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
public class LogoutServlet extends HttpServlet {
  public void service(HttpServletRequest request, HttpServletResponse response)
      throws IOException {
    HttpSession session = request.getSession(true);
    session.setAttribute("loggedin", new Boolean(false));
    session.setAttribute("userid", null);
    response.sendRedirect("index.jsp");
  }
}