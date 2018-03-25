package com.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import com.bean.LoginBean;
public class LoginDao {
public String authenticateUser(LoginBean loginBean)
{
	String userName = loginBean.getUserName(); 
	String password = loginBean.getPassword();
	try
	{
		//Class.forName("com.mysql.jdbc.Driver"); //loading mysql driver 	 
		Connection con = DBConnection.createConnection();//DriverManager.getConnection("jdbc:mysql://localhost:3306/patient", "root", "root"); //attempting to connect to MySQL database
		Statement statement = con.createStatement(); 
		ResultSet resultSet = statement.executeQuery("select id,username,password from users"); 
		
		while(resultSet.next()) 
		{
			String userNameDB = resultSet.getString("username"); 
			String passwordDB = resultSet.getString("password");
			int pid=resultSet.getInt("id");
			loginBean.setPid(pid);
			if(userName.equals(userNameDB) && password.equals(passwordDB))
			{
				return "SUCCESS"; 
			}
		}	
	}
	catch(Exception e)
	{
		e.printStackTrace();
	}
		return "Invalid user credentials"; 
	}	
}