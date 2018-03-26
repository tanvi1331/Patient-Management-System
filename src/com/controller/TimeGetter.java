package com.controller;

import java.io.*;

import javax.servlet.*;

import javax.servlet.http.*;

import org.omg.Messaging.SyncScopeHelper;

import com.dao.DBConnection;

import java.sql.*;
import java.util.ArrayList;
import java.util.Calendar;

@SuppressWarnings("serial")
public class TimeGetter extends HttpServlet 
{

//Method to get the parameter (product number) into a String and //pass it as an argument to the getImage method

public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
{
	Time et=null,st=null;
	HttpSession s=request.getSession();
	int dId = (int) s.getAttribute("dId");
	Connection c = DBConnection.createConnection();
	try
	{
		System.out.println(request.getParameter("datepicker"));
		String mydate= request.getParameter("datepicker");
		//Date date1=new SimpleDateFormat("yyyy-mm-dd").parse(mydate); 
		Statement time = c.createStatement();
		System.out.println("SELECT * FROM slotdata WHERE dId = "+dId + " AND adate='"+mydate+"'");
		ResultSet rs=time.executeQuery("SELECT * FROM slotdata WHERE dId = "+dId + " AND adate='"+mydate+"'");
		while(rs.next())
		{
			 st=rs.getTime("start");
			 et=rs.getTime("end");
			System.out.println(st + " "+ et);
		}
		
		ArrayList<Time> avail=getTimeSlot(30, st, et);
		avail.forEach(a -> System.out.println(a));
		s.setAttribute("avail",avail);
		response.sendRedirect("Avail.jsp");
	} catch (Exception e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
}
@SuppressWarnings("deprecation")
public ArrayList<Time> getTimeSlot(int slotMinute, Time strFromTime,Time strToTime) 
{
    int fromHour, fromMinute, toHour, toMinute;
    
    fromHour = strFromTime.getHours();
    fromMinute = strFromTime.getMinutes();

    toHour = strToTime.getHours();
    toMinute = strToTime.getMinutes();

    long slot = slotMinute * 60 * 1000;
    Calendar calendar2 = Calendar.getInstance();
    calendar2.set(Calendar.HOUR_OF_DAY, fromHour);
    calendar2.set(Calendar.MINUTE, fromMinute);

    long currentTime = strFromTime.getTime();
    Calendar calendar1 = Calendar.getInstance();
    calendar1.set(Calendar.HOUR_OF_DAY, toHour);
    calendar1.set(Calendar.MINUTE, toMinute);

    long endTime = strToTime.getTime();

    ArrayList<Time> timeSlot = new ArrayList<Time>();

    while (currentTime < endTime) 
    {
            timeSlot.add((new Time(currentTime)));
            currentTime = currentTime + slot;
//            System.out.println(currentTime);
    }
    return timeSlot;
}
//The method to query the database and output the image

/*public void getImage(HttpServletResponse response, String dept) throws ServletException, IOException {

try{

//create an instance of the Oracle JDBC driver (which //must found in your classpath)


//setup the database connection

Connection imageConn = DBConnection.createConnection();
//SQL statement to query the database

PreparedStatement imagePS = imageConn.prepareCall("SELECT * FROM doctordata WHERE department = '"+dept+"'");

imagePS.setQueryTimeout(0);

//the ResultSet object to hold the query results

ResultSet RSImage = imagePS.executeQuery();

//create a boolean datatype that is initialized to //true if the ResultSet is empty (no image found)

boolean noRecords = !RSImage.next();

//if the ResultSet is empty, close it

if (noRecords){

RSImage.close();

}

//if it contains data, go ahead with the image //fetching

else{

//set the content type for an image (image/gif //will still display jpgs and possibly bmps

//in Internet Explorer)

response.setContentType("image/gif");

ServletOutputStream out = response.getOutputStream();

//getBytes is a method of class ResultSet used //to read the ResultSet data into an array of //bytes. This is where the image gets pulled //from the database into an array we can work //with in our code.

byte imageByteArray[] =RSImage.getBytes("photo");

//the content length is set to the length of //the byte array

response.setContentLength(imageByteArray.length);

//the byte array is written to the //ServletOutputStream starting with the first //byte and ending with the last

out.write(imageByteArray, 0, imageByteArray.length);

//The ServletOutputStream is flushed, the //recordset is closed, and the connection is //closed.

out.flush();

RSImage.close();

}

imageConn.close();

}

catch (Exception ex){

}

}*/

}