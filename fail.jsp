<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<% 
	String error=request.getParameter("error");
%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Failed</title>
	<style>
		body
		{
			background-color: black;
			margin: 0;
			padding: 0;
		}
		.fail
		{
			position: absolute;
			top: 1%;
			width: 100%;
			text-align: center;
		}
		.text
		{
			position: absolute;
			top: 60%;
			left: 0%;
			width: 100%;
			color: green;
			text-align: center;
		}
	</style>
</head>

<body>
	<div class="fail">
		<img src="./images/fail.png" alt="fail">
	</div>
	<div class="text">
		<%= error %>
	</div>
	<%@ include file="footer.jsp" %>
</body>
</html>
