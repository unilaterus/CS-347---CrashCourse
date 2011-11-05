<%-- 
    Document   : login
    Created on : Oct 25, 2011, 5:03:41 PM
    Author     : catronjc
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<?xml version="1.0" encoding="utf-8"?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN"
  "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login Page</title>
    <style type="text/css">
      .errmsg {background-color: red; color: black; }
    </style>
    <script type="text/JavaScript">

      // validate form data
      function validateForm() {
        var valid = true

        // validate userid
        var userid = get('userid').value
        var password = get('password').value
        get('useriderr').style.padding = "0px"
        get('useriderr').innerHTML = ''
        get('passerr').innerHTML = ''
        get('passerr').style.padding = "0px"
        if (! /^[\-\_a-zA-Z0-9]*$/.test(userid)) {
          valid = false
          useriderr.innerHTML = 'Invalid Username.'
          useriderr.style.padding = "2px"
        }
	else if (userid.length < 8 || userid.length > 16) {
            valid = false
            passerr.innerHTML = 'Inavlid Username.'
            passerr.style.padding = "2px"
        }

        else if (! /^[a-zA-Z0-9]*$/.test(password)) {
            valid = false
            passerr.innerHTML = 'Invalid Password.'
            passerr.style.padding = "2px"
        }
	else if (password.length < 8 || password.length > 16) {
            valid = false
            passerr.innerHTML = 'Invalid Password.'
            passerr.style.padding = "2px"
        }

        return valid
      }

      // shortcut for accessing DOM elements by id
      function get(id) { return document.getElementById(id) }
    </script>
    </head>
    <body>
        <h1>Hello User!</h1>
        <form method="POST" action="/MusicWorld/Login" onsubmit="return validateForm()">
            <p><label for="userid"> User Name: <input type="text" name="userid" id="userid" /></label>
            <span id="useriderr" class="errmsg"> </span></p>
            <p><label for="password"> Password:  <input type="password" name="password" id="password" /></label>
                <span id="passerr" class="errmsg"> </span></p>
            <p><input type="submit" value="Login" name="login" id="login" /></p>
        </form>
    </body>
</html>
