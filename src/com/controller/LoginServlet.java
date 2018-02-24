package com.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bean.LoginBean;
import com.dao.LoginDao;

@SuppressWarnings("serial")
public class LoginServlet extends HttpServlet
{
public LoginServlet() {}

protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
{
	String userName = request.getParameter("uname");
	String password = request.getParameter("pass");

	LoginBean loginBean = new LoginBean(); 
	
	loginBean.setUserName(userName); 
	loginBean.setPassword(password);
	
	LoginDao loginDao = new LoginDao(); 

	String userValidate = loginDao.authenticateUser(loginBean); 

	if(userValidate.equals("SUCCESS")) 
	{
		request.setAttribute("uname", userName); 
		response.sendRedirect("/Patient_Management_System/Home.jsp");;
	}
	else
	{
		request.setAttribute("errMessage", userValidate); 
		request.getRequestDispatcher("/Login.jsp").forward(request, response);
	}
}
}