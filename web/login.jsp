<%-- 
    Document   : login
    Created on : Oct 25, 2011, 5:03:41 PM
    Author     : catronjc
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello User!</h1>
        <form method="POST" action="/CrashCourse/Login">
            <p><label> User Name: <input type="text" name="userid" /></label></p>
            <p><label> Password:  <input type="password" name="password" /></label></p>
            <p><input type="submit" value="Login" name="login" /></p>
        </form>
    </body>
</html>
