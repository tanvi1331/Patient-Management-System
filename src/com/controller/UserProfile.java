package com.controller;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dao.DBConnection;

/**
 * Servlet implementation class UserProfile
 */
@WebServlet("/UserProfile")
public class UserProfile extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UserProfile() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
//		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		 String FirstName = request.getParameter("fname");
		 String LastName = request.getParameter("lname");
		 String email = request.getParameter("email");
		 String userName = request.getParameter("uname");
		 String pass = request.getParameter("pass");
	//	doGet(request, response);
		       
			try {
				Connection conn=DBConnection.createConnection();
				String query = "update users set fname = ?, lname = ?,email=?,password=? where username = ?";
			      PreparedStatement preparedStmt=conn.prepareStatement(query);
			      preparedStmt.setString(1, FirstName);
			      preparedStmt.setString(2, LastName);
			      preparedStmt.setString(3, email);
			      preparedStmt.setString(4, pass);
			      preparedStmt.setString(5, userName);
			      int i=preparedStmt.executeUpdate();
			      response.sendRedirect("/Patient_Management_System/Index.jsp");
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		      
		      
	}

}
