<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import = "java.io.*,java.util.*,java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>

</head>
<body>
<% HttpSession s=request.getSession();
	ArrayList<Time> avail = (ArrayList<Time>) s.getAttribute("avail");
%>
<form action="BookAppointment" >
<select name="time">
    <% for(int i=0;i<avail.size();i++) { %>
    <option value="<%=avail.get(i)%>"><%=avail.get(i)%></option>
    <% } %>
  </select>
  <input type="submit" value="Confirm" onclick="return confirm('Are you sure for an appointment?')">

</form>
</body>
</html>