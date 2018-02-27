package com.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.*;

import com.bean.RegisterBean;
import com.dao.RegisterDao;
@SuppressWarnings("serial")
public class RegisterServlet extends HttpServlet
{            
	public RegisterServlet(){}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		 //Copying all the input parameters in to local variables
		 String FirstName = request.getParameter("fname");
		 String LastName = request.getParameter("lname");
		 String email = request.getParameter("email");
		 String userName = request.getParameter("uname");
		 String password = request.getParameter("pass");
		 
		 RegisterBean registerBean = new RegisterBean();
		 //Using Java Beans - An easiest way to play with group of related data
		 registerBean.setFirstName(FirstName);
		 registerBean.setLastName(LastName);
		 registerBean.setEmail(email);
		 registerBean.setUserName(userName);
		 registerBean.setPassword(password); 
		 
		 HttpSession session=request.getSession();
		 session.setAttribute("uname", FirstName);
		 RegisterDao registerDao = new RegisterDao();
		 
		 //The core Logic of the Registration application is present here. We are going to insert user data in to the database.
		 String userRegistered = registerDao.registerUser(registerBean);
		 
		 if(userRegistered.equals("SUCCESS"))   //On success, you can display a message to user on Home page
		 {
		 request.getRequestDispatcher("/Home.jsp").forward(request, response);
		 }
		 else   //On Failure, display a meaningful message to the User.
		 {
		 request.setAttribute("errMessage", userRegistered);
		 request.getRequestDispatcher("/Login.jsp").forward(request, response);
		 }
		 }
}
