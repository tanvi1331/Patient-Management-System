package com.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import com.bean.RegisterBean;

public class RegisterDao 
{
	public String registerUser(RegisterBean registerBean)
	{
		String firstName = registerBean.getFirstName();
		String lastName = registerBean.getLastName();
		String userName = registerBean.getUserName();
		String email = registerBean.getEmail();
		String password = registerBean.getPassword();
		
		try
		{
			Connection con = DBConnection.createConnection();
			String query = "insert into users values (NULL,?,?,?,?,?,?,NULL)"; //Insert user details into the table 'USERS'
			 PreparedStatement preparedStatement = con.prepareStatement(query); //Making use of prepared statements here to insert bunch of data
			 preparedStatement.setString(1, firstName);
			 preparedStatement.setString(2, lastName);
			 preparedStatement.setString(3, email);
			 preparedStatement.setString(4, userName);
			 preparedStatement.setString(5, password);
			 preparedStatement.setString(6, "patient");
			 
			 int i= preparedStatement.executeUpdate();
			 
			 if (i!=0)  //Just to ensure data has been inserted into the database
			 return "SUCCESS"; 
			 }
			 catch(Exception e)
			 {
			 e.printStackTrace();
			 }
			 
			 return "Oops.. Something went wrong there..!";  // On failure, send a message from here.
		
	}
}
