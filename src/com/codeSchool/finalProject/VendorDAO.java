package com.codeSchool.finalProject;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;


abstract class VendorDAO<T> implements UserImpl <T> {
	 final String JDBC_Driver="com.mysql.jdbc.Driver";
	
	public Connection getConnection() throws Exception{
		try {

			Class.forName(JDBC_Driver).newInstance();

			Connection conn = DriverManager.getConnection(
					"jdbc:mysql://localhost:3306/vendor?useSSL=false&"+"user=root&password=Pamelagrace2");
			System.out.println("Connected");
			return conn;
		} catch (Exception e) {
			System.out.println("I'm not connected");
			System.out.println(e);
		}
		return null;
	
	}
	public void closeConnection() throws Exception{
	
	
		
	}
	public User getUserFromDatabase(User user) throws Exception{
	Connection conn = getConnection();
	String sql="SELECT * FROM user WHERE vUserName =?";
	PreparedStatement ps = conn.prepareStatement(sql);
	ResultSet rs = ps.executeQuery();
	ps.setString(3, user.getUserName());
	while(rs.next()){
		if(rs.getString("vUserName").equals(user.getUserName()) && rs.getString("vPassword").equals(user.getPassword())){
			user = new User();
		}
		user.setfName(rs.getString("vFirstName"));
		user.setlName(rs.getString("vLastName"));
		user.setUserName(rs.getString("vUserName"));
		user.setPassword(rs.getString("vPassword"));
		user.setEmail(rs.getString("vEmail"));
		user.setGender(rs.getString("vGender"));
		user.setZipcode(rs.getString("vZipcode"));
		user.setVendor(rs.getString("Vendor"));
	}
	return user;	
	}
	

}
