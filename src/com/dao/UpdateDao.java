package com.dao;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;

import javax.servlet.http.HttpSession;

import org.mortbay.jetty.Request;

import com.bean.RegisterBean;
import com.bean.UpdateBean;
import com.google.api.client.http.HttpRequest;

public class UpdateDao 
{
	public String updateUser(UpdateBean updateBean)
	{
		String firstName = updateBean.getFirstName();
		String lastName = updateBean.getLastName();
		String userName = updateBean.getUserName();
		String email = updateBean.getEmail();
		String gender = updateBean.getGender();
		String address = updateBean.getAddress();
		int age = updateBean.getAge();
		Date d= updateBean.getDob();
		float contact = updateBean.getContact();
		float econtact = updateBean.getEcontact();
		String symptoms = updateBean.getSymptoms();
		
		try
		{
			Connection conn=DBConnection.createConnection();
			String query = "update patientdata set fname = ?, lname = ?,email=?,age=?,gender=?,address=?,dob=?,contactno=?,econtact=?,symptoms=? where uname = ?";
		      PreparedStatement preparedStmt = conn.prepareStatement(query);
		      preparedStmt.setString(1, firstName);
		      preparedStmt.setString(2, lastName);
		      preparedStmt.setString(3, email);
		      preparedStmt.setInt(4, age);
		      preparedStmt.setString(5, gender);
		      preparedStmt.setString(6, address);
		      preparedStmt.setDate(7, d);
		      preparedStmt.setFloat(8, contact);
		      preparedStmt.setFloat(9, econtact);
		      preparedStmt.setString(10, symptoms);
		      preparedStmt.setString(11, "ashi");
		      int i=preparedStmt.executeUpdate();
		      if (i!=0)  //Just to ensure data has been inserted into the database
					 return "SUCCESS"; 
		}
		catch (Exception e) {
			// TODO: handle exception
		}
		return "error";
	}
}
