package com.company.studentmanagementsystem.servlet;

import java.io.IOException;
import java.sql.Connection;
import java.sql.Date;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.text.ParseException;
import java.text.SimpleDateFormat;

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
			
			int noOfRowsAffected = 0;
			Connection connection = null;
					
			//retrieve request parameters
			String firstName = request.getParameter("firstName");
			String lastName = request.getParameter("lastName");
			String emailID = request.getParameter("emailId");
			String contactNumber = request.getParameter("contactNumber");
			String city = request.getParameter("city");
			String state = request.getParameter("state");
			String country = request.getParameter("country");
			String course = request.getParameter("course");
			String dateOfBirthString = request.getParameter("dateOfBirth");
			long zipcode = Long.parseLong(request.getParameter("zipcode"));
			System.out.println("Date of Birth from input is: "+dateOfBirthString);
			java.util.Date utilDateOfBirth = null;
			try {
				utilDateOfBirth = new SimpleDateFormat("yyyy-MM-dd").parse(dateOfBirthString);
			} catch (ParseException e) {
				System.out.println("Error occured while Parsing Date from input!!");
			}
			Date dateOfBirth = new Date(utilDateOfBirth.getTime());
			System.out.println("SQL Date of Birth is: "+dateOfBirth.toString());
			
			
			//jdbc statements
			  
			try {
				//load the driver class
				Class.forName("oracle.jdbc.driver.OracleDriver");
				
				//create  the connection object  
				connection = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","tiger");
				
				//create insert query
				String insertStudentQuery = "INSERT INTO students VALUES(students_student_id_seq.nextval, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
				
				PreparedStatement preparedStatement = connection.prepareStatement(insertStudentQuery);
				preparedStatement.setString(1, firstName);
				preparedStatement.setString(2, lastName);
				preparedStatement.setString(3, emailID);
				preparedStatement.setString(4, contactNumber);
				preparedStatement.setString(5, city);
				preparedStatement.setString(6, state);
				preparedStatement.setString(7, country);
				preparedStatement.setLong(8, zipcode);
				preparedStatement.setDate(9, dateOfBirth);
				preparedStatement.setString(10, course);
				
				noOfRowsAffected = preparedStatement.executeUpdate();
				
			} catch (ClassNotFoundException e) {
				System.out.println("Error occured is: "+e.getMessage());
			} catch (SQLException e) {
				System.out.println("Error occured is: "+e.getMessage());
			}finally {
				try {
					connection.close();
				} catch (SQLException e) {
					System.out.println("Exception in Closing DB Connection!!");
				}
			}
			
			//jdbc returned resultset/java collection
			if(noOfRowsAffected == 1) {
				System.out.println("Insertion is Successful!!");
			}else {
				System.out.println("Insertion has Failed!!");
			}
			
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
