<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page import = "java.io.*,java.util.*,java.sql.*"%>
<%@ page import = "javax.servlet.http.*,javax.servlet.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix = "c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix = "sql"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Search Doctor</title>
</head>
<body>
<sql:setDataSource var = "snapshot" driver = "com.mysql.jdbc.Driver"
         url = "jdbc:mysql://localhost/patient"
         user = "root"  password = "root"/>
 
      <sql:query dataSource = "${snapshot}" var = "result">
         SELECT DISTINCT department from doctordata;
      </sql:query>
<form action="DisplayDoc.jsp" name="f1">
    <table  align="center">
        <caption>Select Department</caption>
        <c:forEach var = "row" items = "${result.rows}">
            <tr>
               <td><input type="checkbox" name="id" value='<c:out value="${row.department}"></c:out>'/><c:out value="${row.department}"></c:out></td>
            </tr>
         </c:forEach>
         <tr>
            <td colspan="3"><input type="submit" value="Go" ></td>
        </tr>
    </table>   
    </form>
</body>
</html>