package com.controller;

import java.io.IOException;
import java.util.*;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.api.client.auth.oauth2.Credential;
import com.google.api.client.util.DateTime;
import com.google.api.services.calendar.Calendar;
import com.google.api.services.calendar.model.Event;
import com.google.api.services.calendar.model.EventDateTime;

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
		/*com.google.api.services.calendar.Calendar service = getCalendarService();
		com.google.api.services.calendar.model.Calendar calendar = service.calendars().get("primary").execute();
		createEvent(null);*/
		response.sendRedirect("https://calendar.google.com/calendar/embed?src=vuft4kt5m65oo56k7gse5qbbt0%40group.calendar.google.com&ctz=America%2FToronto");
	}
	
public void createEvent(Calendar cal) throws IOException {       

Event event = new Event();
event.setSummary("Event name here");
event.setLocation("event place here");

Date startDate = new Date();
Date endDate = new Date(startDate.getTime() + 3600000);
DateTime start = new DateTime(startDate, TimeZone.getTimeZone("UTC"));
event.setStart(new EventDateTime().setDateTime(start));
DateTime end = new DateTime(endDate, TimeZone.getTimeZone("UTC"));
event.setEnd(new EventDateTime().setDateTime(end));
Event createdEvent = cal.events().insert("primary", event).execute();
System.out.println("Created event id: " + createdEvent.getId());
}

}
