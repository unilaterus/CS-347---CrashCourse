<%-- 
    Document   : register
    Created on : Oct 25, 2011, 7:06:31 PM
    Author     : catronjc
--%>

<%@page import="java.util.*,java.sql.*;" contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>MusicWorld</title>
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
	var firstname = get('firstname').value
	var lastname = get('lastname').value
        var useriderr = get('useriderr')
        var firsterr = get('firsterr')
        var lasterr = get('lasterr')
        var passerr = get('passerr')
        useriderr.style.padding = "0px"
        useriderr.innerHTML = ''
	firsterr.innerHTML = ''
	firsterr.style.padding = "0px"
	lasterr.innerHTML = ''
	lasterr.style.padding = "0px"
        passerr.innerHTML = ''
        passerr.style.padding = "0px"
        if (! /^[\-\_a-zA-Z0-9]*$/.test(userid)) {
          valid = false
          useriderr.innerHTML = 'Userid can contain only alpha-numeric characters, hyphens and underscores.'
          useriderr.style.padding = "2px"
        }
	else if (userid.length < 8 || userid.length > 16) {
            valid = false
            passerr.innerHTML = 'Userid must be between 8 and 16 characters.'
            passerr.style.padding = "2px"
        }

        else if (! /^[a-zA-Z0-9]*$/.test(password)) {
            valid = false
            passerr.innerHTML = 'Password may only contain alpha-numeric characters.'
            passerr.style.padding = "2px"
        }
	else if (password.length < 8 || password.length > 16) {
            valid = false
            passerr.innerHTML = 'Password must be between 8 and 16 characters.'
            passerr.style.padding = "2px"
        }
	else if (! /^[a-zA-Z]*$/.test(firstname)) {
            valid = false
            firsterr.innerHTML = 'First name field may contain only letters.'
            firsterr.style.padding = "2px"
        }
        else if (firstname.length == 0) {
            valid = false
            firsterr.innerHTML = 'Must enter first name.'
            firsterr.style.padding = "2px"
        }
        else if (firstname.length > 20) {
            valid = false
            firsterr.innerHTML = 'Name must be less than 20 characters(if your name is longer please abbreviate).'
            firsterr.style.padding = "2px"
        }
	else if (! /^[\'a-zA-Z]*$/.test(lastname)) {
            valid = false
            lasterr.innerHTML = 'Last name field may contain only letters and apostrophes.'
            lasterr.style.padding = "2px"
        }
        else if (lastname.length > 20) {
            valid = false
            lasterr.innerHTML = 'Last Name must be less than 20 characters(if your name is longer please abbreviate).'
            get('lasterr').style.padding = "2px"
        }
        
        else if (lastname.length == 0) {
            valid = false
            lasterr.innerHTML = 'Must enter last name (please enter X if you only have one name).'
            lasterr.style.padding = "2px"
        }

        return valid
      }

      // shortcut for accessing DOM elements by id
      function get(id) { return document.getElementById(id) }
    </script>
    </head>
    <body>
        <h1>Welcome to Music World!</h1>
		<h3>To join simply fill out the form below and click register!</h3>
        <form method="POST" action="/MusicWorld/Register" onsubmit="return validateForm()">
            <p><label for="userid"> User Name:  <input type="text" name="userid" id="userid" /></label>
            <span id="useriderr" class="errmsg"> </span></p>
            <p><label for="password"> Password:     <input type="password" name="password" id="password" /></label>
                <span id="passerr" class="errmsg"> </span></p>
			<p><label for="firstname"> First Name:  <input type="text" name="firstname" id="firstname" /></label>
                <span id="firsterr" class="errmsg"> </span></p>
			<p><label for="lastname"> Last Name:   <input type="text" name="lastname" id="lastname" /></label>
                <span id="lasterr" class="errmsg"> </span></p>
            <p><input type="submit" value="Register" name="register" id="register" /></p>
        </form>
    </body>
</html>