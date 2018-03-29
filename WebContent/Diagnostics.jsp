<%@page import="com.dao.DBConnection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="java.io.File" %>
<%@ page import="org.apache.commons.io.*" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
    int id = 0;
    HttpSession s=request.getSession();
   // id=(int)s.getAttribute("pId");
    InputStream Content = null;
    Statement stmt = null;
    Connection con = null;

    try
    {
        String filename = "data" + id + ".pdf";
        con = DBConnection.createConnection();
        stmt = con.createStatement();
        String qry = "select * from reports where pId=" + id;
        ResultSet rst = stmt.executeQuery(qry);
		File pdfFile = new File("C:/Users/Dj/Downloads/dia.pdf");
        byte[] pdfByteArray = FileUtils.readFileToByteArray(pdfFile);
        response.setContentType("application/pdf");
        response.getOutputStream().write(pdfByteArray);
        response.getOutputStream().flush(); 
         /*         if (rst.next())
        {
            Content = rst.getBinaryStream("dia");
        }
        out.println(Content);
       // byte requestBytes[] = Content.getBytes();
        //ByteArrayInputStream bis = new ByteArrayInputStream(requestBytes);
        response.reset();
        response.setContentType("application/pdf");
        response.setHeader("cache-control", "no-cache");
        response.setHeader("Content-disposition", "attachment; filename=" + filename);

        byte[] buf = new byte[1024];
        int len;
        while ((len = Content.read(buf)) > 0)
        {
            response.getOutputStream().write(buf, 0, len);
        }
        Content.close();
        response.getOutputStream().flush(); */
    }
    catch (Exception e)
    {
        e.printStackTrace();
    }
 %>
</body>
</html>