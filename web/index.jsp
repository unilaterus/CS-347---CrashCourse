<%-- 
    Document   : index
    Created on : Oct 25, 2011, 5:02:12 PM
    Author     : catronjc
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<jsp:include page="header.jsp" />
        
        <% if (session.getAttribute("loggedin") == null || !(Boolean)session.getAttribute("loggedin")) { %>
        
        <p>Please <a href="login.jsp">Login!</a></p>
        
        <% }
           else if ((Boolean)session.getAttribute("loggedin") == true) {
               if (session.getAttribute("name") != null) {
         %>
        
        <p>What's Up <%=session.getAttribute("name")%></p>
        
         
        <%      } 
                else {
                   
        %>
        
        <p>Hello, <%=session.getAttribute("userid")%>!</p>
        <%
               }
         }
        %>

        <jsp:include page="footer.jsp" />