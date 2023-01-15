<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%
	String official_id=(String)session.getAttribute("session_id");
	if(official_id==null)
	{
		response.sendRedirect("index.jsp");
	}
	String session_name=(String)session.getAttribute("session_name");
	String session_image=(String)session.getAttribute("session_image");
	String session_type=(String)session.getAttribute("session_type");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<link rel="icon" href="./images/c_logo.png">
<link href="./css/admin_header.css" rel="stylesheet" type="text/css">
</head>
<body>
	<div class="top">
		<div class="college_logo">
			<img src="./images/college_logo.png" alt="college_logo" id="college_logo">
		</div>
		<div class="college_name">
			B. S. Anangpuria Institute Of Technology And Management
		</div>
		<div class="welcome">
			WELCOME <%= session_name %> / <%= session_type %> DASHBOARD
		</div>
		<div class="bsaitm_name">
			BSAITM
		</div>
		<div class="org">
			ORGANIZATION :
		</div>
		<div class="setting">
			<div class="setting_logo">
				<img src="./images/setting.png" alt="setting" id="setting">
			</div>
			<div class="logout">
				<div class="logout_pic">
					<img src="./images/user/<%= session_image %>" alt="<%= session_image %>" id="logout_pic">
				</div>
				<div class="logout_name">
					USER: <strong><%= session_name %></strong>
				</div>
				<div class="change_password">
					<button id="change_password">CHANGE PASSWORD</button>
				</div>
				<div class="signout">
					<a href="logout"><button id="signout">SIGN OUT</button></a>
				</div>
			</div>
		</div>
		<div class="cname">
			ROHtech
		</div>
		<div class="nav">
			<div class="nav_dashboard">
				<a href="admin_dashboard.jsp">DASHBOARD</a>
			</div>
			<div class="nav_my_profile">
				<a href="my_profile_personal?page_from=admin_my_profile.jsp">MY PROFILE</a>
			</div>
			<div class="nav_add_new_user">
				<a href="add_new_user.jsp">ADD NEW USER</a>
			</div>
			<div class="nav_update_user">
				<a href="update_user?from=admin">UPDATE USER</a>
			</div>
			<div class="nav_mark_attendance">
				<a href="admin_mark_attendance">MARK ATTENDANCE</a>
			</div>
		</div>
	</div>
</body>
</html>
