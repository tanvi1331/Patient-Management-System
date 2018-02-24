package com.dao;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
 
public class DBConnection 
{
	
public static Connection createConnection()
{
	Connection con = null;
	try 
	{
		try 
		{
			Class.forName("com.mysql.jdbc.Driver"); //loading mysql driver 
		} 
		catch (ClassNotFoundException e)
		{
			e.printStackTrace();
		} 
		con = DriverManager.getConnection("jdbc:mysql://localhost:3306/patient", "root", "root"); //attempting to connect to MySQL database
		System.out.println("Printing connection object "+con);
		return con;
	} 
	catch (Exception e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	return con; 
	
	}
}
