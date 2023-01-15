<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Reports - Student Dashboard</title>
<link href="./css/reports_student_dashboard.css" rel="stylesheet" type="text/css">
</head>
<body>
	<%@ include file = "header.jsp" %>
	
	
	
	<div class="student_detail">
		Student Detail
	</div>
	<div class="content">
		
	</div>
	<div class="student_info">
		<strong>Student Information</strong>
	</div>
	<div class="college_r_n">
		<strong>College R. No./Student Name :</strong>
	</div>
	<div class="student_name_input">
		<input type="text" name="student_name" id="student_name">
	</div>
	<div class="student_information">
			<strong>Student Information</strong>
		</div>
	<div class="student_name">
		<strong>Student Name :</strong>
	</div>
	<div class="father_name">
		<strong>Father Name :</strong>
	</div>
	<div class="sem">
		<strong>Sem./Year - Section :</strong>
	</div>
	<div class="view_detail">
		<button id="view_detail">VIEW DETAIL</button>
	</div>
	
	<%@ include file = "footer.jsp" %>
</body>
</html>