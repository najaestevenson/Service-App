package com.codeSchool.finalProject;

import java.io.IOException;
import java.sql.*;

import javax.mail.MessagingException;
import javax.mail.internet.AddressException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.swing.JOptionPane;

/**
 * Servlet implementation class registerNewUser
 */
@WebServlet("/registerNewUser")
public class registerNewUser extends HttpServlet {
	private static final long serialVersionUID = 1L;
	


	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		

		UserDAO u = new UserDAO();
		
		User user = null;
		String m="";
		UserMessageBean msg= new UserMessageBean();
		String link = "";

		String firstName = request.getParameter("First");
		String lastName = request.getParameter("Last");
		String username = request.getParameter("UserName");
		String password = request.getParameter("Password");
		String confirmPass = request.getParameter("PasswordConfirmation");
		String email = request.getParameter("Email");
		String confirmEmail = request.getParameter("ConfirmEmail");
		String zipcode = request.getParameter("Zipcode");
		String gender = request.getParameter("Gender");
		String vendor = request.getParameter("vendor");
		boolean process = true;

		// do all the data checks first. if the data is invalid, don't waste time processing anything, error the user 
/*		if (firstName != null && lastName != null && username != null && password != null && password.length() >= 5
				&& email != null && (password.equals(confirmPass))) {

		}*/
		
		if (firstName != null & lastName != null) {
		} else {
			m= " Either First name or Last name is empty. Please fill in.";
			process = false;
		}
		if (!process && username != null) {
			
		} else {
			m+=" Username is Empty";
			process = false;
		}

		if (!process && password != null & password.length() >= 5) {
		}else {
			m+= "Password must be at least 5 characters long";
			process = false;
		}

		if (!process && password.equals(confirmPass)) {
		} else{
			m+= "Password doesn't match";
			process = false;
		}

		if (!process && email != null) {
		}else{
			m+="Email field is Empty";
			process = false;
		}

		if (!process && email.equals(confirmEmail)) {
		}else{
			m+="Email doesn't match";
			process = false;
		}
		if(!process && gender != null){

		}else{
			m+="Please select a Gender";
			process = false;
		}
		if(!process && zipcode != null){
			 
			
		}else{
			m+="Zipcode field is empty";
			process = false;
		}
		if(!process && vendor != null){
			
		}else{
			
		}
		
		user = new User(firstName,lastName,username,password,email,gender,zipcode,vendor);
		 msg.setMsg(m); 
		 try {
			int b= u.findduplicate(user);
			
			if( b ==0){
				int a=u.insertUser(user);
				System.out.println(a);
				user.setId(a);
				System.out.println(user.getId());
				

				if(a > 0){
					HttpSession session = request.getSession();
					
					session.setMaxInactiveInterval(24 * 60);
					session.setAttribute("user", user);
					if(vendor != null){
						link = "BootStrapDesign/vendorProfile.jsp";
						
					}else{
					link = "BootStrapDesign/main.jsp";
					}
					msg.setMsg("Welcome "+ user.getfName());
					}else{
					JOptionPane.showMessageDialog(null, "no user added to Database");
				}
				
			}	
		 } catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		
		response.sendRedirect(link);

		
			


}}
