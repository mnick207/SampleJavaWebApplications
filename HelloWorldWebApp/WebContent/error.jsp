<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Error Page</title>
</head>
<body>
	<h1>Error Page!!</h1>
	<br>
	<h1><%= "Error Message is : " + request.getAttribute("errorText") %></h1>
	<h2>Request Dispatcher brought me here!!</h2>
</body>
</html>