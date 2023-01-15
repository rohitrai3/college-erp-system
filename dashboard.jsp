<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Dashboard</title>
<link href="./css/dashboard.css" rel="stylesheet" type="text/css">
</head>
<body>
	<%@ include file = "header.jsp" %>
	
	<div class="myself">
		<div class="user_logo">
			<img src="./images/user_logo.png" alt="user_logo" id="user_logo">
		</div>
		<div class="myself_title">
			<strong>About MySelf</strong>
		</div>
	</div>
	<div class="myself_data">
		<div class="profile_logo">
			<img src="./images/user/<%= session_image %>" alt="profile_logo" id="profile_logo">
		</div>
		<div class="profile_name">
			Hi! I am <strong><%= session_name %></strong>
		</div>
	</div>
	<div class="circulars">
		<div class="circulars_logo">
			<img src="./images/circulars.png" alt="circulars_logo" id="circulars_logo">
		</div>
		<div class="circulars_title">
			<strong>Circulars</strong>
		</div>
	</div>
	<div class="circulars_data">
		
	</div>
	<div class="assignments">
		<div class="assignments_logo">
			<img src="./images/assignments.png" alt="assignments_logo" id="assignmnts_logo">
		</div>
		<div class="assignments_title">
			<strong>Assignments</strong>
		</div>
	</div>
	<div class="assignments_data">
		
	</div>
	<div class="inbox">
		<div class="inbox_logo">
			<img src="./images/inbox.png" alt="inbox_logo" id="inbox_logo">
		</div>
		<div class="inbox_title">
			<strong>Inbox</strong>
		</div>
	</div>
	<div class="inbox_data">
		
	</div>
	
	<%@ include file = "footer.jsp" %>
</body>
</html>