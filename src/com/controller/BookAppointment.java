package com.controller;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
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
		String t=request.getParameter("time");
		Time tt=java.sql.Time.valueOf(t);
		long currentTime = tt.getTime();
		long slot = 30 * 60 * 1000;
		Time ett = (new Time(currentTime + slot));
		HttpSession s=request.getSession();
		ArrayList<Time> a=(ArrayList<Time>) s.getAttribute("avail");
		//int pid=(int) s.getAttribute("pid");
		int dId=(int) s.getAttribute("dId");
		try
		{
			Connection con = DBConnection.createConnection();
			String query = "insert into appointment values (NULL,?,?,?,?)";
			PreparedStatement ps = con.prepareStatement(query);
			ps.setInt(1,dId);
			ps.setInt(2,2);
			ps.setTime(3, tt);
			ps.setTime(4, ett);
			int i= ps.executeUpdate();
			
			/*if(i!=0)
			{
				response.sendRedirect("Avail.jsp");
			}*/
			for(int j=0;j<a.size();j++)
			{
				if(a.contains(tt))
				{
					a.remove(tt);
					s.setAttribute("avail", a);
				}
			}
			//response.sendRedirect("Avail.jsp");
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
