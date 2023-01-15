<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%
  	if(session.getAttribute("session_id")!=null)
   	{
   		if(session.getAttribute("session_id").equals("admin@rohtech.com"))
   		{
   			response.sendRedirect("admin_dashboard.jsp");
   		}
   		else
   		{
   			response.sendRedirect("dashboard.jsp");
   		}
   	}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Index</title>
<link rel="icon" href="./images/c_logo.png">
<link rel="stylesheet" type="text/css" href="./css/index.css">
</head>
<body>
	<div class="top">
		<div class="logo">
			<img src="./images/c_logo.png" alt="c_logo" id="my_logo">
		</div>
		<div class="cname">
			ROHtech
		</div>
		<div class="text1">
			Bringing technology into education <br> beyond imagination...!
		</div>
	</div>
	<div class="middle">
		<div class="image1">
			<img src="./images/image1.png" alt="image1" id="image1">
		</div>
		<div class="form">
			<div class="college_logo">
				<img src="./images/college_logo.png" alt="college_logo" id="college_logo">
			</div>
			<div class="college_name">
				B. S. Anangpuria Institute Of Technology And Management
			</div>
			<div class="line1">
				<img src="./images/line1.png" alt="line" id="line1">
			</div>
			<form action="login" method="post">
			<div class="uname">
				Username
			</div>
			<div class="uname_input">
				<input type="text" name="username" id="uname">
			</div>
			<div class="password">
				Password
			</div>
			<div class="password_input">
				<input type="password" name="password" id="password">
			</div>
			<div class="login">
				<input type="submit" name="login" value="Login" id="login_button">
			</div>
			</form>
			<div class="fpass">
				<button id="fpass">Forgot Password</button>
			</div>
			<div class="fail">
				Username or Password was incorrect
			</div>
			<div class="line2">
				<img src="./images/line2.png" alt="line" id="line2">
			</div>
		</div>
	</div>
	<div class="bottom">
		<div class="b_line">
			Powered by:
		</div>
		<div class="b_cname">
			rohTECH
		</div>
	</div>
</body>
</html>