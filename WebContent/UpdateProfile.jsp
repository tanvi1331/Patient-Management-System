<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Update Profile</title>
<link rel="stylesheet" href="Style.css">
</head>
<body>
<form class="form form--signup framed" action="UpdateServlet" method="post">
	<input type="text" placeholder="First Name"  value= <%= session.getAttribute( "fname" ) %> name="fname" class="input  input--top" required/>    
	<input type="text" placeholder="Last name" value= <%= session.getAttribute( "lname" ) %> name="lname" class="input" required/>
	<input type="text" placeholder="User name" value= <%= session.getAttribute( "uname" ) %> name="uname" class="input" disabled="disabled"/>
    <input type="email" placeholder="Email" value= <%= session.getAttribute( "email" ) %> name="email" class="input" pattern="[a-zA-Z0-9.-_]{1,}@[a-zA-Z.-]{2,}[.]{1}[a-zA-Z]{2,}" required/>
    <input type="text" placeholder="Age" name="age" class="input" required/>
    <select name="gender" id="sex" class="input" requried>
                <option value="dropdown">Please Select Gender</option>
                <option value="male">Male</option>
                <option value="female">Female</option>
    </select>
    <input type="text" placeholder="Address" name="add" class="input" required/>
    <input type="date" placeholder="Date of Birth" name="dob" class="input" required/>
    <input type="text" placeholder="Contact Number" name="contact" class="input" required/>
    <input type="text" placeholder="Emergency Contact" name="econtact" class="input" required/>
    <input type="text" placeholder="Symptoms" name="sym" class="input" required/>
    
    <input type="submit" value="Update Profile" class="input input--submit" />
</form>
  <div class="fullscreen-bg"></div>
</body>
</html>