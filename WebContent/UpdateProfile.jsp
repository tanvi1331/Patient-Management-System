<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page import = "java.io.*,java.util.*,java.sql.*"%>
<%@ page import="java.io.*"%>
<%@ page import = "javax.servlet.http.*,javax.servlet.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix = "c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix = "sql"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Update Profile</title>
<link rel="stylesheet" href="Style.css">
</head>
<body>
<%
HttpSession s=request.getSession();
String id=(String)s.getAttribute("uname");
%>
<form class="form form--signup framed" action="UpdateServlet" method="post">
	<sql:setDataSource var = "snapshot" driver = "com.mysql.jdbc.Driver"
         url = "jdbc:mysql://localhost/patient"
         user = "root"  password = "root"/>

      <sql:query dataSource = "${snapshot}" var = "result">
         SELECT * from patientdata where uname='<%=id%>';
      </sql:query>
      <table align="left">
	  <c:forEach var = "row" items = "${result.rows}">               
      <tr>
      <td><b>Height</b></td><td></td>
      <td>${row.height} </td>
      </tr>
      <tr>
      <td><b>Weight</b></td><td></td>
      <td>${row.weight} </td>
      </tr>
      <tr>
      <td>Gender</td><td></td>
      <td>${row.gender} </td>
      </tr>
      <tr>
      <td>Emergency </br>Contact</td><td></td>
      <td>${row.econtact} </td>
      </tr>
      <tr>
      <td>Allergies</td><td></td>
      <td>${row.allergies} </td>
      </tr>
      <tr>
      <td>Medications</td><td></td>
      <td>${row.medications} </td>
      </tr>
                                           </c:forEach>
                                    </tbody>
                                    </table>
    <%--   <c:forEach var = "row" items = "${result.rows}">
        
	<input type="text" placeholder="Height" name="height" class="input" value="${row.height}"/>
    <input type="text" placeholder="weight" name="weight" class="input" value="${row.weight}"/>
    <input type="text" placeholder="gender" name="gen" class="input" value="${row.gender}">
    <input type="date" placeholder="Date of Birth" name="dob" class="input" value="${row.dob}">
    <input type="text" placeholder="Emergency Contact" name="econtact" class="input" value="${row.econtact}">
    <input type="text" placeholder="Allergies" name="sym" class="input" value="${row.allergies}">
    <input type="text" placeholder="Medication" name="sym" class="input" value="${row.medications}">
    
    </c:forEach> --%>
</form>
  <div class="fullscreen-bg"></div>
</body>
</html>