<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ include file="admin_header.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Administrator Dashboard</title>
<link href="./css/admin_dashboard.css" rel="stylesheet" type="text/css">
</head>
<body>
	<div class="myself">
		<div class="user_logo">
			<img src="./images/user_logo.png" alt="user_logo" id="user_logo">
		</div>
		<div class="myself_title">
			About MySelf
		</div>
	</div>
	<div class="myself_data">
		<div class="profile_logo">
			<img src="./images/user/<%= session_image %>" alt="<%= session_image %>" id="profile_logo">
		</div>
		<div class="profile_name">
			Hi! I am
		</div>
		<div class="profile_name_name">
			<%= session_name %>
		</div>
	</div>
	<div class="inbox">
		<div class="inbox_logo">
			<img src="./images/inbox.png" alt="inbox_logo" id="inbox_logo">
		</div>
		<div class="inbox_title">
			Inbox
		</div>
	</div>
	<div class="inbox_data">
		
	</div>
	<%@ include file="footer.jsp" %>
</body>
</html>