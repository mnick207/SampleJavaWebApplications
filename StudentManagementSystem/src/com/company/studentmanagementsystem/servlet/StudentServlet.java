package com.company.studentmanagementsystem.servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class StudentServlet extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		requestProcessor(request, response);
	}

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		requestProcessor(request, response);
	}
	
	protected void requestProcessor(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{

		System.out.println("Servlet Received a "+request.getMethod()+" Request");
		System.out.println("Servlet Path : "+request.getServletPath());
		System.out.println("Context Path : "+request.getServletContext().getContextPath());
		System.out.println("Request URI : "+request.getRequestURI());
		System.out.println("Request URL : "+request.getRequestURL().toString());
		//System.out.println("Username from FORM is: "+request.getParameter("userName"));
		//System.out.println("Email from FORM is: "+request.getParameter("emailId"));
		//System.out.println("Password from FORM is: "+request.getParameter("password"));
		//System.out.println("Secret Text from FORM is: "+request.getParameter("secretText"));
		
		
		if(request.getRequestURI().contains("showStudentRegistrationForm")) {
			//show Student Registration Form request processor block
			System.out.println("In Register Student processor block");
			System.out.println("Displaying Student Registration Form to user");
			
			RequestDispatcher requestDispatcher = request.getRequestDispatcher("/WEB-INF/views/studentRegistrationForm.jsp");
			requestDispatcher.forward(request, response);
			
		}else if(request.getRequestURI().contains("registerStudent")) {
			//register Student request processor block
			System.out.println("In Register Student processor block");
			System.out.println("Displaying Student Registration Form to user");
			
			//jdbc call
			//jdbc returned resultset/java collection
			//forward to jsp
			
			RequestDispatcher requestDispatcher = request.getRequestDispatcher("/WEB-INF/views/studentRegistrationResponse.jsp");
			requestDispatcher.forward(request, response);
			
		}else{
			request.setAttribute("errorText", "Invalid URL Pattern!!");
			RequestDispatcher requestDispatcher =  request.getRequestDispatcher("/WEB-INF/views/error.jsp");
			requestDispatcher.forward(request, response);
		}
		
	}
	
}
