<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@ include file="admin_header.jsp" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add New User</title>
<link href="./css/add_new_user.css" rel="stylesheet" type="text/css">
</head>

<body>
	<form action="add_new_user" method="post">
	<div class="content">
		
	</div>
	<div class="name">
		Name :
	</div>
	<div class="salutation_select">
		<select name="salutation" id="salutation">
			<option value="Ms.">Ms.</option>
			<option value="Mr.">Mr.</option>
		</select>
	</div>
	<div class="name_input">
		<input type="text" name="name" id="name">
	</div>
	<div class="mobile">
		Mobile No. :
	</div>
	<div class="mobile_input">
		<input type="text" name="mobile" id="mobile">
	</div>
	<div class="username">
		Username :
	</div>
	<div class="username_input">
		<input type="text" name="username" id="username">
	</div>
	<div class="username_text">
		@rohtech.com
	</div>
	<div class="password">
		Password :
	</div>
	<div class="password_input">
		<input type="password" name="password" id="password">
	</div>
	<div class="type">
		Account Type :
	</div>
	<div class="type_select">
		<select name="type" id="type">
			<option value="none">--Select Account Type--</option>
			<option value="Teacher">Teacher</option>
			<option value="Student">Student</option>
		</select>
	</div>
	<div class="create_user">
		<input type="submit" name="create_user" value="CREATE USER" id="submit">
	</div>
	</form>
	<%@ include file = "footer.jsp" %>
	
</body>
</html>