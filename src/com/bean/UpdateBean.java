package com.bean;

import java.sql.Date;

public class UpdateBean 
{
	private String userName;
	private String gender;
	private String firstName;
	private String lastName;
	private String email;
	private String address;
	private String symptoms;
	private Date dob;
	private int age;
	private long contact;
	public long getContact() {
		return contact;
	}
	public long getEcontact() {
		return econtact;
	}
	private long econtact;

	public void setContact(long contact) {
		this.contact = contact;
	}
	public void setEcontact(long econtact) {
		this.econtact = econtact;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getFirstName() {
		return firstName;
	}
	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}
	public String getLastName() {
		return lastName;
	}
	public void setLastName(String lastName) {
		this.lastName = lastName;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getSymptoms() {
		return symptoms;
	}
	public void setSymptoms(String symptoms) {
		this.symptoms = symptoms;
	}
	public Date getDob() {
		return dob;
	}
	public void setDob(Date dob) {
		this.dob = dob;
	}
	public int getAge() {
		return age;
	}
	public void setAge(int age) {
		this.age = age;
	}
	
	
}