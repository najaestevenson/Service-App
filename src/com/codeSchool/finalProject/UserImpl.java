package com.codeSchool.finalProject;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.List;

public interface  UserImpl <T>{
	
	public List<User> getALlVendors();
	public User getVendor(T obj);
	public void updateVendor(T obj);
	public void deleteVendor(T obj);
	


}
