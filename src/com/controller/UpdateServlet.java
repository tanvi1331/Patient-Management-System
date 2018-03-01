package com.controller;

import java.io.IOException;
import java.util.*;
import java.sql.Date;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bean.UpdateBean;
import com.dao.UpdateDao;
import com.google.api.client.auth.oauth2.Credential;
import com.google.api.client.util.DateTime;
import com.google.api.services.calendar.Calendar;
import com.google.api.services.calendar.model.Event;
import com.google.api.services.calendar.model.EventDateTime;

import main.java.Quickstart;

/**
 * Servlet implementation class UpdateServlet
 */
@WebServlet("/UpdateServlet")
public class UpdateServlet extends HttpServlet 
{
	private static final long serialVersionUID = 1L;       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UpdateServlet() {}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		 String FirstName = request.getParameter("fname");
		 String LastName = request.getParameter("lname");
		 String email = request.getParameter("email");
		 String userName = request.getParameter("uname");
		 int age = Integer.parseInt(request.getParameter("age"));
		 String gender = request.getParameter("gender");
		 String address = request.getParameter("add");
		 long contact = Long.parseLong(request.getParameter("contact"));
		 long econtact = Long.parseLong(request.getParameter("econtact"));
		 String symptoms = request.getParameter("sym");
		 Date dob=Date.valueOf(request.getParameter("dob"));
		 
		 UpdateBean updatebean=new UpdateBean();
		 updatebean.setAddress(address);
		 updatebean.setAge(age);
		 updatebean.setContact(contact);
		 updatebean.setDob(dob);
		 updatebean.setEcontact(econtact);
		 updatebean.setEmail(email);
		 updatebean.setFirstName(FirstName);
		 updatebean.setGender(gender);
		 updatebean.setLastName(LastName);
		 updatebean.setSymptoms(symptoms);
		 updatebean.setUserName(userName);
		 
		 UpdateDao updatedao=new UpdateDao();
		 
		 String updateuser=updatedao.updateUser(updatebean);
		 if(updateuser.equals("SUCCESS"))   //On success, you can display a message to user on Home page
		 {
		 request.getRequestDispatcher("/Home.jsp").forward(request, response);
		 }
	}
/*public void createEvent(Calendar cal) throws IOException {       

Event event = new Event();
event.setSummary("Doctor Appointment");
event.setLocation("Thunder Bay");

Date startDate = new Date();
Date endDate = new Date(startDate.getTime() + 3600000);
DateTime start = new DateTime(startDate, TimeZone.getTimeZone("UTC"));
event.setStart(new EventDateTime().setDateTime(start));
DateTime end = new DateTime(endDate, TimeZone.getTimeZone("UTC"));
event.setEnd(new EventDateTime().setDateTime(end));
Event createdEvent = cal.events().insert("primary", event).execute();
System.out.println("Created event id: " + createdEvent.getId());
}*/

}
