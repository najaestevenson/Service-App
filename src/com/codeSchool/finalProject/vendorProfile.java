package com.codeSchool.finalProject;

import java.io.IOException;
import java.sql.ResultSet;
import java.sql.SQLException;


import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


/**
 * Servlet implementation class vendorProfile
 */
@WebServlet("/vendorProfile")
public class vendorProfile extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public vendorProfile() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		ServicesDAO s= new ServicesDAO();
		User user = null;
		ResultSet rs;
		String m="";
		UserMessageBean msg= new UserMessageBean();
		String link = "";

		
		String [] vServices  = request.getParameterValues("Services");
		String mobileOption = request.getParameter("mobile");
		String yearsOfExperience= request.getParameter("exp");
		
		boolean process = true;

		// do all the data checks first. if the data is invalid, don't waste time processing anything, error the user 
/*		if (firstName != null && lastName != null && username != null && password != null && password.length() >= 5
				&& email != null && (password.equals(confirmPass))) {

		}*/
		
		if (!process & vServices != null) {
		} else {
			m= " Please select the service(s) you provide";
			process = false;
		}
		if (!process && mobileOption != null) {
			
		} else {
			m+=" Please indicate your mobile preference";
			process = false;
		}
		if (!process && yearsOfExperience != null) {
		}else {
			m+= "Please indicate your years of experience";
			process = false;
		}
		
			
		
		 msg.setMsg(m); 
		HttpSession session = request.getSession();
		User u= (User)session.getAttribute("user");
		u.setServices(vServices);
		System.out.println("servlet "+ vServices[0] + " " + "" + vServices[1]);
		
		
		 try {
			 int  sv = s.services(u);
			 
			
			
			if(sv != 0){
				
				System.out.println("It worked, YOU DID IT");
				link ="BootStrapDesign/vendorMainPage.jsp";
			}
				
			
			 } catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		
		response.sendRedirect(link);

		
	}

}
