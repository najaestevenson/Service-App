package com.codeSchool.finalProject;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class login
 */

public class login extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
  

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		UserDAO v = new UserDAO();
		
		String userName = request.getParameter("username");
		String pass = request.getParameter("password");
		
		UserMessageBean msg = new UserMessageBean();
		
		
			User user = new User();	
			user.setUserName(userName);
			user.setPassword(pass);
			 
		try {
					User userFromDb = v.getUser(user);
					
					if( userFromDb == null){
						response.sendRedirect("BootStrapDesign/registration.jsp");
					}else if(userFromDb != null){
						HttpSession session = request.getSession();
						
						session.setMaxInactiveInterval(24 * 60);
						session.setAttribute("user", userFromDb);
						msg.setMsg("Welcome"+ user.getfName());
						response.sendRedirect("BootStrapDesign/main.jsp");
					}	
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
				 
				

				
	
	}

}
