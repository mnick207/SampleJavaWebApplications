package com.company.helloworld.servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class HelloWorldServlet extends HttpServlet {

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
		
		
		if(request.getRequestURI().contains("sayHelloToAll")) {
			//say hello to all request processor block
			System.out.println("In say hello to all request processor block");
			System.out.println("HELLO TO ALL!!");
			request.setAttribute("helloAllMessage", "HELLO TO ALL!!");
			RequestDispatcher requestDispatcher = request.getRequestDispatcher("/response.jsp");
			requestDispatcher.forward(request, response);
			
		}else if (request.getRequestURI().contains("sayHelloToUser")) {
			//say hello to user request processor block
			System.out.println("In say hello to user request processor block");
			System.out.println("HELLO "+request.getParameter("userName")+"!!");
			request.setAttribute("helloUserMessage", "HELLO "+request.getParameter("userName")+"!!");
			RequestDispatcher requestDispatcher =  request.getRequestDispatcher("/response.jsp");
			requestDispatcher.forward(request, response);
			
		}else {
			request.setAttribute("errorText", "Invalid URL Pattern!!");
			RequestDispatcher requestDispatcher =  request.getRequestDispatcher("/error.jsp");
			requestDispatcher.forward(request, response);
		}
		
		//jdbc call
		//jdbc returned java collection
		//forward to jsp
		
	}
	
}
