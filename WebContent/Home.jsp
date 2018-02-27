<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Welcome</title>
<link rel="stylesheet" href="Style.css">
</head>
<body>
<form class="form form--login framed" action="UpdateServlet" method="post">
<h2 class="text text--centered text--omega"><b>Welcome!</b> </h2>
    <!-- <input type="submit" value="Update Profile" class="input input--submit" /> -->
     <input type="submit" value="Book an Appointment" class="input input--submit" />
</form>

<form class="form form--signup framed" action="ScheduleServlet" method="post">
   
  </form>
    <div class="fullscreen-bg"></div>
</body>
</html>