package com.codeSchool.finalProject;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import javax.swing.JOptionPane;

import com.mysql.jdbc.Statement;

public class UserDAO extends VendorDAO <User> {

	User user = new User();
	String sql = "INSERT INTO user (vFirstName, vLastName, vUsername, vPassword, vEmail, vGender, vZipcode) VALUES (?, ?, ?, ?, ?, ?, ?)";
	Connection conn;
	PreparedStatement ps;
	ResultSet rs;
	
	public List<User> getALlVendors() {
		// TODO Auto-generated method stub
		return null;
	}

	
	public User getVendor(User user) {
		// TODO Auto-generated method stub
		return null;
	}

	
	public void updateVendor(User vendorname) {
		// TODO Auto-generated method stub

	}

	
	public void deleteVendor(User vendorname) {
		// TODO Auto-generated method stub

	}

	
	

	@Override
	public void closeConnection() {
		// TODO Auto-generated method stub
		
	}
	public  int insertUser(User user) throws SQLException{
		
		int u_id = 0;
		
		try {
			conn =getConnection();
			System.out.println("i'm here");
			ps = (PreparedStatement)conn.prepareStatement(sql,Statement.RETURN_GENERATED_KEYS);
			System.out.println("ok i'm pass the connector");
			ps.setString(1, user.getfName());
			ps.setString(2, user.getlName());
			ps.setString(3, user.getUserName());
			ps.setString(4, user.getPassword());
			ps.setString(5, user.getEmail());
			ps.setString(6, user.getGender());
			ps.setInt(7, Integer.parseInt(user.getZipcode()));
			int b = ps.executeUpdate();
			
			ResultSet res = ps.getGeneratedKeys();{
				if(res.next()){
					 u_id=(res.getInt(1));
				}
				
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally{
			ps.close();
			conn.close();
		}
		
			return u_id;
	}
	public int findduplicate(User user) throws SQLException{
		
		int row = 0;
		try {
			conn = getConnection();
			String sql1 = "select * from user where vUsername ='"+user.getUserName()+"' and vEmail = '"+user.getEmail()+"'";
			ps = conn.prepareStatement(sql1);
			rs=ps.executeQuery();
			while(rs.next()){
				row += 1;
				System.out.println(row);
			}
			if(row ==1){
				JOptionPane.showMessageDialog(null, "User already exist under either Username or Email. Please enter another Username or Email");
			}else if(row ==0){
			JOptionPane.showMessageDialog(null, "You're one of a kind. You will now be added to the database");
			}
			
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally{
			ps.close();
			conn.close();
		}
		System.out.println(row);
		return row;
	}

	public User getUser(User user) throws SQLException{
		User dbUser = null;
		String sql1 = "select * from user where vUsername ='"+user.getUserName()+"' and vPassword = '"+user.getPassword()+"'";
		
		try {
			conn = getConnection();
			ps = conn.prepareStatement(sql1);
			rs=ps.executeQuery();
			
			while(rs.next()){
				if(rs.getString("vUsername").equals(user.getUserName())&& rs.getString("vPassword").equals(user.getPassword())){
					dbUser = new User();
					dbUser.setfName(rs.getString("vFirstName"));
					dbUser.setlName(rs.getString("vLastName"));
					dbUser.setUserName(rs.getString("vUsername"));
					dbUser.setId(rs.getInt("id"));
					dbUser.setEmail(rs.getString("vEmail"));
					dbUser.setGender(rs.getString("vGender"));
					dbUser.setZipcode(rs.getString("vZipcode"));
			
			
		}}} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally{
			ps.close();
			conn.close();
		}
		
		return dbUser;
	}
}

		
	

