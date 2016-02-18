package com.codeSchool.finalProject.test;
import static org.junit.Assert.*;

import java.util.ArrayList;

import org.junit.Before;
import org.junit.Test;

import com.codeSchool.finalProject.ServicesDAO;
import com.codeSchool.finalProject.User;
import com.codeSchool.finalProject.UserDAO;
import com.codeSchool.finalProject.UserImpl;
import com.mysql.jdbc.Connection;

public class dbTest {
	UserDAO u;
	User user;
	ServicesDAO s;
	
	
	
	
	@Before
	public void setUp(){
		u = new UserDAO();
		s = new ServicesDAO();
		
		
	}

	@Test
	public void testGetConnection() throws Exception {
		  u.getConnection();
		
	}
	
//	@Test
//	public void testInsertUser() throws Exception{
//		user = new User("najae", "stevenson", "najaeS", "123456", "NajaeStevenson@gmail.com", "Female", "30045","");
//		int num1 = u.insertUser(user);
//		
//		assertFalse(num1 ==0);
//		
//		System.out.println("User Add");
//	}
//	@Test
//	public void testGetUserId() throws Exception{
//		user = new User("Tom","Brady","TomB","FootBall","TomB@gmail.com","male","30014","yes");
//		int userid = u.insertUser(user);
//		assertTrue(userid ==1);
//		assertTrue(user.getId()==11);
//	}
	@Test
	public void testInsertServiceswithUserId() throws Exception{
	int d = 4;
	
	
		int actual= s.insertServices(10,d);
		int expected = 1;
		assertEquals(expected, actual);
	}
}
