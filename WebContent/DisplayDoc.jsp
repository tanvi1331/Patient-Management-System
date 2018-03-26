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
<title>Doctor List</title>

</head>
<body>
<%String[] ids=request.getParameterValues("id");
for(String id:ids)
{%>
<sql:setDataSource var = "snapshot" driver = "com.mysql.jdbc.Driver"
         url = "jdbc:mysql://localhost/patient"
         user = "root"  password = "root"/>
 
      <sql:query dataSource = "${snapshot}" var = "result">
         SELECT * from doctordata where department='<%=id%>';
      </sql:query>
<form action="Scheduler.jsp">      
<table  align="center">
        <caption><c:out value="<%=id%>"></c:out></caption>
         <% } %>
             <c:forEach var = "row" items = "${result.rows}">
            <tr>
<%--             <td><img src="${request.contextPath}/ImageGetter?dept=<%=id%>" width="50" height="50"/></td>
 --%>           
            <td><img src='<c:out value="${row.photo}"></c:out>' width="50" height="50"/></td>
               <td><input type="text" name="fn" value='<c:out value="${row.fname}"></c:out>' disabled="disabled">
               <td><input type="text" name="ln" value='<c:out value="${row.lname}"></c:out>' disabled="disabled">
               <td><input type="text" name="cost" value='<c:out value="${row.cost}"></c:out>' disabled="disabled">
               <td><input type="text" name="cre" value='<c:out value="${row.credentials}"></c:out>' disabled="disabled">
               <td><input type="text" name="ex" value='<c:out value="${row.experience}"></c:out>' disabled="disabled">	
                <td><input type="text" name="status" value='<c:out value="${row.status}"></c:out>' disabled="disabled">	 
               <td><input type="radio" name="id" value='<c:out value="${row.dId}"></c:out>'/>Select Doctor</td>
            	<c:set var="dId" value="${row.dId}" scope="session" />
            </tr>
         </c:forEach>
         <tr align="center">
            <td colspan="3"><input type="submit" value="Check Availibilty" ></td>
        </tr>
    </table>   
 
    </form>
</body>
</html>