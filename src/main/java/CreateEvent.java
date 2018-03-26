package main.java;

import java.util.Arrays;
import com.google.api.client.util.DateTime;
import com.google.api.services.calendar.model.Event;
import com.google.api.services.calendar.model.EventAttendee;
import com.google.api.services.calendar.model.EventDateTime;
import com.google.api.services.calendar.model.EventReminder;

public class CreateEvent 
{
	
	public static String event() throws Exception
	{
		// Refer to the Java quickstart on how to setup the environment:
		// https://developers.google.com/google-apps/calendar/quickstart/java
		// Change the scope to CalendarScopes.CALENDAR and delete any stored
		// credentials.

		com.google.api.services.calendar.Calendar service = Quickstart.getCalendarService();
		
		Event event = new Event()
		    .setSummary("Appointment Booking")
		    .setLocation("Thunder Bay")
		    .setDescription("Doctor's Appintment Booking");

		DateTime startDateTime = new DateTime("2018-05-28T09:00:00-07:00");
		EventDateTime start = new EventDateTime()
		    .setDateTime(startDateTime)
		    .setTimeZone("Canada/Toronto");
		event.setStart(start);

		DateTime endDateTime = new DateTime("2018-05-28T17:00:00-07:00");
		EventDateTime end = new EventDateTime()
		    .setDateTime(endDateTime)
		    .setTimeZone("America/Los_Angeles");
		event.setEnd(end);

		/*String[] recurrence = new String[] {"RRULE:FREQ=DAILY;COUNT=2"};
		event.setRecurrence(Arrays.asList(recurrence));*/

		EventAttendee[] attendees = new EventAttendee[] {
		    new EventAttendee().setEmail("tanvi13@gmail.com"),
		    //new EventAttendee().setEmail("sbrin@example.com"),
		};
		event.setAttendees(Arrays.asList(attendees));

		EventReminder[] reminderOverrides = new EventReminder[] {
		    new EventReminder().setMethod("email").setMinutes(24 * 60),
		    new EventReminder().setMethod("popup").setMinutes(10),
		};
		Event.Reminders reminders = new Event.Reminders()
		    .setUseDefault(false)
		    .setOverrides(Arrays.asList(reminderOverrides));
		event.setReminders(reminders);

		String calendarId = "primary";
		event = service.events().insert(calendarId, event).execute();
		System.out.printf("Event created: %s\n", event.getHtmlLink());
		return event.getHtmlLink();
	}
}