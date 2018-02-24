<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
 pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Register</title>
<!-- <script type="text/javascript" src="https://form.jotform.com/jsform/80355188932261"></script>
 -->
 <!--===============================================================================================-->	
	<link rel="icon" type="image/png" href="images/icons/favicon.ico"/>
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/bootstrap/css/bootstrap.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="fonts/font-awesome-4.7.0/css/font-awesome.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="fonts/Linearicons-Free-v1.0.0/icon-font.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/animate/animate.css">
<!--===============================================================================================-->	
	<link rel="stylesheet" type="text/css" href="vendor/css-hamburgers/hamburgers.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/animsition/css/animsition.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/select2/select2.min.css">
<!--===============================================================================================-->	
	<link rel="stylesheet" type="text/css" href="vendor/daterangepicker/daterangepicker.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="css/util.css">
	<link rel="stylesheet" type="text/css" href="css/main.css">
<!--===============================================================================================-->
 
 <script>
function validate()
{ 
 var fullname = document.form.fullname.value;
 var email = document.form.email.value;
 var username = document.form.username.value; 
 var password = document.form.password.value;
 var conpassword= document.form.conpassword.value;
 
 if (fullname==null || fullname=="")
 { 
 alert("Full Name can't be blank"); 
 return false; 
 }
 else if (email==null || email=="")
 { 
 alert("Email can't be blank"); 
 return false; 
 }
 else if (username==null || username=="")
 { 
 alert("Username can't be blank"); 
 return false; 
 }
 else if(password.length<6)
 { 
 alert("Password must be at least 6 characters long."); 
 return false; 
 } 
 else if (password!=conpassword)
 { 
 alert("Confirm Password should match with the Password"); 
 return false; 
 } 
 } 
</script> 
</head>
<body>
<div class="limiter">
		<div class="container-login100">
			<div class="wrap-login100 p-t-50 p-b-90">
	
<form name="form" action="RegisterServlet" method="get" onsubmit="return validate()">

					<div class="wrap-input100 validate-input m-b-16" data-validate = "Username is required">
						<input  class="input100" type="text" name="name" placeholder="Full Name">
						<span class="focus-input100"></span>
					</div>
					<div class="wrap-input100 validate-input m-b-16" data-validate = "Username is required">
						<input  class="input100" type="text" name="email" placeholder="Email">
						<span class="focus-input100"></span>
					</div>
					
					<div class="wrap-input100 validate-input m-b-16" data-validate = "Username is required">
						<input  class="input100" type="text" name="email" placeholder="Contact No">
						<span class="focus-input100"></span>
					</div>
					
					<div class="wrap-input100 validate-input m-b-16" data-validate = "Username is required">
						<input  class="input100" type="datetime" name="date" placeholder="Birth Date">
						<span class="focus-input100"></span>
						</div>
						
<div class="wrap-input100 validate-input m-b-16" data-validate = "Username is required">
											<tr>
 <td>Sex</td> 
 </tr>
 <tr>
 <td>
 <input type="radio" name="sex" id="Female" value="Female" /> Female </td>
 </tr>	
 <tr>
 <td><td><input type="radio" name="sex" id="Male" value="Male" /> Male </td>
 </tr>
 </div>
 
					
					<div class="wrap-input100 validate-input m-b-16" data-validate = "Username is required">
						<input  class="input100" type="text" name="email" placeholder="UserName">
						<span class="focus-input100"></span>
					</div>
					
					<div class="wrap-input100 validate-input m-b-16" data-validate = "Username is required">
						<input  class="input100" type="text" name="email" placeholder="Password">
						<span class="focus-input100"></span>
	
					</div>
					<div class="wrap-input100 validate-input m-b-16" data-validate = "Username is required">
						<input  class="input100" type="text" name="email" placeholder="Confirm Password">
						<span class="focus-input100"></span>
						</div>

 <tr>
 <td><%=(request.getAttribute("errMessage") == null) ? ""
 : request.getAttribute("errMessage")%></td>
 </tr>
 
					<div class="container-login100-form-btn m-t-17">
						<button class="login100-form-btn">
							Register
						</button>
					</div></table>
</form>
 </div>
 </div>
 </div>
 <!--===============================================================================================-->
	<script src="vendor/jquery/jquery-3.2.1.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor/animsition/js/animsition.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor/bootstrap/js/popper.js"></script>
	<script src="vendor/bootstrap/js/bootstrap.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor/select2/select2.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor/daterangepicker/moment.min.js"></script>
	<script src="vendor/daterangepicker/daterangepicker.js"></script>
<!--===============================================================================================-->
	<script src="vendor/countdowntime/countdowntime.js"></script>
<!--===============================================================================================-->
	<script src="js/main.js"></script>
 
</body>
</html>