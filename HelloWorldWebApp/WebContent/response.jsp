<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Response Page</title>
</head>
<body>
	<h1>Response Page!!</h1>
	<br>
	<%
		if(request.getAttribute("helloAllMessage")!= null && !request.getAttribute("helloAllMessage").toString().isEmpty()){
	%>
	<h1><%= request.getAttribute("helloAllMessage").toString() %></h1>
	<%		
		}else if(request.getAttribute("helloUserMessage")!= null && !request.getAttribute("helloUserMessage").toString().isEmpty()){
	%>
	<h1><%= request.getAttribute("helloUserMessage").toString() %></h1>
	<%	
		}
	%>
	
	<h2>Request Dispatcher brought me here!!</h2>
</body>
</html>