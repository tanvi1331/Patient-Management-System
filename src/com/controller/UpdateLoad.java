package com.controller;

import java.io.IOException;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dao.DBConnection;

/**
 * Servlet implementation class UpdateLoad
 */
@WebServlet("/UpdateLoad")
public class UpdateLoad extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UpdateLoad() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doPost(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		String firstname = null,lastname=null,email=null,username=null;
		try 
		{
			HttpSession session=request.getSession();
			String uname=(String) session.getAttribute("uname");
			Connection c=DBConnection.createConnection();
			Statement st = c.createStatement();
			ResultSet rs = st.executeQuery("select * from users where username='"+uname+"'");
			
			while (rs.next())
		      {
		        int id = rs.getInt("id");
		         firstname = rs.getString("fname");
		         lastname = rs.getString("lname");
		         email = rs.getString("email");
		         username = rs.getString("username");
	          }
		} 
		catch (SQLException e) 
		{
			e.printStackTrace();
		}
		HttpSession session = request.getSession();
		session.setAttribute("fname", firstname);
		session.setAttribute("lname", lastname);
		session.setAttribute("uname", username);
		session.setAttribute("email", email);
		response.sendRedirect("/Patient_Management_System/UserProfile.jsp");
	}

}
