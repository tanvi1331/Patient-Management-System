package com.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.sql.Time;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.commons.logging.impl.AvalonLogger;

import com.dao.DBConnection;

/**
 * Servlet implementation class BookAppointment
 */
@WebServlet(asyncSupported = true, urlPatterns = { "/BookAppointment" })
public class BookAppointment extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public BookAppointment() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		// TODO Auto-generated method stub
		int fees=0;
		String t=request.getParameter("time");
		Time tt=java.sql.Time.valueOf(t);
		long currentTime = tt.getTime();
		long slot = 30 * 60 * 1000;
		Time ett = (new Time(currentTime + slot));
		Time st = null;
		HttpSession s=request.getSession();
		ArrayList<Time> a=(ArrayList<Time>) s.getAttribute("avail");
		//int pid=(int) s.getAttribute("pid");
		int dId=(int) s.getAttribute("dId");
		int pId=(int) s.getAttribute("pId");
		java.sql.Date date= java.sql.Date.valueOf((String) s.getAttribute("date"));
		try
		{
			Connection con = DBConnection.createConnection();
			String query = "insert into appointment values (NULL,?,?,?,?,?)";
			PreparedStatement ps = con.prepareStatement(query);
			ps.setInt(1,dId);
			ps.setInt(2,pId);
			ps.setTime(3, tt);
			ps.setTime(4, ett);
			ps.setDate(5, date);
			int i= ps.executeUpdate();
			
			/*if(i!=0)
			{
				response.sendRedirect("Avail.jsp");
			}*/
			String q="select * from appiontment where dId="+dId;
			Statement stmt=con.createStatement();
			ResultSet rs=stmt.executeQuery(q);
			while(rs.next())
			{
				st=rs.getTime("start");
			}
			for(int j=0;j<a.size();j++)
			{
				if(a.contains(tt) || a.contains(st))
				{
					a.remove(tt);
					a.remove(st);
					s.setAttribute("avail", a);
				}
			}
			stmt=con.createStatement();
			rs=stmt.executeQuery("select cost from doctordata where dId="+dId);
			while(rs.next())
			{
				fees=rs.getInt("cost");
			}
			ps = con.prepareStatement("insert into bill values(NULL,?,?,?)");
			ps.setInt(1,pId);
			ps.setInt(2,dId);
			ps.setDouble(3,fees);
			ps.executeUpdate();
			PrintWriter out = response.getWriter();
			out.print("<html><head>");
			out.print("<script type=\"text/javascript\">alert(" + "Appointment Booked!" + ");</script>");
			out.print("</head><body></body></html>");
			response.sendRedirect("Scheduler.jsp");
		} 
		catch (SQLException e) 
		{
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
