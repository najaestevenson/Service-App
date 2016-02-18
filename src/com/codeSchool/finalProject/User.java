package com.codeSchool.finalProject;

import java.io.Serializable;

public class User implements Serializable{
	/**
	 * 
	 */
	private static final long serialVersionUID = -3414483018234906771L;
	private int id;
	private String fName;
	private String lName;
	private String userName;
	private String password;
	private String email;
	private String gender;
	private String zipcode;
	private String vendor;
	private String[] services;
	
	public User(){
		
		
	}
	
	public User(String userName) {
		super();
		this.userName = userName;
	}

	public User(String userName, String password, String email) {
		super();
		this.userName = userName;
		this.password = password;
		this.email = email;
	}

	public User(String fName, String lName, String userName, String password, String email, String gender,
			String zipcode,String vendor) {
		super();
		
		this.fName = fName;
		this.lName = lName;
		this.userName = userName;
		this.password = password;
		this.email = email;
		this.gender = gender;
		this.zipcode = zipcode;
	}
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getfName() {
		return fName;
	}
	public void setfName(String fName) {
		this.fName = fName;
	}
	public String getlName() {
		return lName;
	}
	public void setlName(String lName) {
		this.lName = lName;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getZipcode() {
		return zipcode;
	}
	public void setZipcode(String zipcode) {
		this.zipcode = zipcode;
	}

	public String getVendor() {
		return vendor;
	}

	public void setVendor(String vendor) {
		this.vendor = vendor;
	}

	public String[] getServices() {
		return services;
	}

	public void setServices(String[] services) {
		this.services = services;
	}
	
	

}
