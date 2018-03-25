<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <link href="<c:url value="Patient_Management_System/WebContent/css/Style.css" />" rel="stylesheet">
    <link rel="stylesheet" href="Style.css">
</head>
<body>

  <input type="radio" checked id="toggle--login" name="toggle" class="ghost" />
  <input type="radio" id="toggle--signup" name="toggle" class="ghost" />

 
  <form class="form form--login framed" action="LoginServlet" method="post">

    <input type="text" placeholder="UserName" name="uname" class="input input--top" required/>
    <input type="password" placeholder="Password" name="pass" class="input" />
    <input type="submit" value="Log in" class="input input--submit" />
    
    <label for="toggle--signup" class="text text--small text--centered">New? <b>Sign up</b></label>
  </form>
  
  <form class="form form--signup framed" action="RegisterServlet" method="post">
    <h2 class="text text--centered text--omega">Join Us and <b>Live Healthier!</b> </h2>
	<input type="text" placeholder="First Name" name="fname" class="input  input--top" required/>    
	<input type="text" placeholder="Last name" name="lname" class="input" required/>
	<input type="text" placeholder="User name" name="uname" class="input" required/>
    <input type="email" placeholder="Email" name="email" class="input" pattern="[a-zA-Z0-9.-_]{1,}@[a-zA-Z.-]{2,}[.]{1}[a-zA-Z]{2,}" required/>
    <input type="password" placeholder="Password" name="pass" class="input" required/>

    <input type="submit" value="Sign up" class="input input--submit" />
    
    <label for="toggle--login" class="text text--small text--centered">Not new? <b>Log in</b></label>
  </form>
  <div class="fullscreen-bg"></div>
</body>
</html>