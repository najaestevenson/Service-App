package com.codeSchool.finalProject;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.mysql.jdbc.Statement;

public class ServicesDAO extends VendorDAO <servicesBean> {
	User user = new User();
	servicesBean s = new servicesBean();
	Connection conn;
	Statement stmnt;
	PreparedStatement ps;
	ResultSet rs= null;

	public List<User> getALlVendors() {
		String service =s.getServices();
		try {
			conn = getConnection();
			ps = conn.prepareStatement("Select u.vFirstName, u.vLastName, u.vEmail From user u Join user_services us ON us.service_id ='"+id+"' where us."';):
			
			
			result =ps.executeUpdate();
			System.out.println(result);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally{
			ps.close();
			conn.close();
		}
		return result;
	}
		


	public User getVendor(servicesBean s) {
		// TODO Auto-generated method stub
		return null;
	}

	
	public void updateVendor(servicesBean s) {
		// TODO Auto-generated method stub

	}


	public void deleteVendor(servicesBean s) {
		// TODO Auto-generated method stub

	}
	
	
	
	public int services(User user) throws SQLException{
		String [] userServ = user.getServices();
		System.out.println("string array" + userServ[0] +""+ userServ[1]);
		//Integer [] intServArray = new Integer[userServ.length];
		String sql ="Insert INTO user_services (user_id, service_id)" + " values( ?,?)";
	  
		//for(int i=0;i<userServ.length; i++){
		//intServArray[i] = Integer.parseInt(userServ[i]);	
		System.out.println("DAO "+userServ[0] + "" + "" + userServ[1]);
		//}
		int result =0;
		try {
			conn = getConnection();
		
			
			//"Insert INTO user_services (user_id, service_id) select u.id, s.id from user u, services s where u.id = '"+user.getId()+"' and s.id ='"+sId+"';")
			ps = conn.prepareStatement(sql);
			for (int i = 0; i < userServ.length; i++) {
				ps.setInt(1, user.getId());
				ps.setInt(2,Integer.parseInt(userServ[i]));
				
			
				result =ps.executeUpdate();
			}
			System.out.println(result);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally{
			ps.close();
			conn.close();
		}
		return result;
		
	
	
		

	}
	
	
	public int insertServices(int user_id, int l) throws SQLException{
		
		//String insertStmnt = "Insert INTO user_services (user_id, service_id) select u.id, s.id from user u, services s where u.id = '"+user_id+"' and s.id ='"+l+"';";
		int result =0;
		try {
			conn = getConnection();
			ps = conn.prepareStatement("Insert INTO user_services (user_id, service_id) select u.id, s.id from user u, services s where u.id = '"+user_id+"' and s.id ='"+l+"';");
			
			
			result =ps.executeUpdate();
			System.out.println(result);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally{
			ps.close();
			conn.close();
		}
		return result;
	}

	
	

}
