<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Examination - Student Report</title>
<link href="./css/examinaton_student_report.css" rel="stylesheet" type="text/css">
</head>
<body>
	<%@ include file = "header.jsp" %>
	
	
	
	<div class="result_report">
		Student Result Report
	</div>
	<div class="content">
		
	</div>
	<div class="report_info">
		<strong>Report Information</strong>
	</div>
	<div class="session">
		<strong>Session :</strong>
	</div>
	<div class="session_select">
		<select name="session" id="session">
			<option value="none">--Select Session--</option>
		</select>
	</div>
	<div class="organisation">
		<strong>Organisation :</strong>
	</div>
	<div class="org_select">
		<select name="org" id="org">
			<option value="none">--Select Organisation--</option>
		</select>
	</div>
	<div class="based_on">
		<strong>Report Based On :</strong>
	</div>
	<div class="based_on_select">
		<select name="section" id="section">
			<option value="none">--Select Report Type--</option>
		</select>
	</div>
	<div class="status">
		<strong>Status :</strong>
	</div>
	<div class="status_select">
		<select name="status" id="status">
			<option value="all">--All Students--</option>
		</select>
	</div>
	<div class="student">
		<strong>Student :</strong>
	</div>
	<div class="student_input">
		<input type="text" name="date" id="date">
	</div>
	<div class="template">
		<strong>Template :</strong>
	</div>
	<div class="template_select">
		<select name="template" id="template">
			<option value="none">--Select Template--</option>
		</select>
	</div>
<div class="download_report">
		<button id="download_report">DOWNLOADD REPORT</button>
	</div>
	
	<%@ include file = "footer.jsp" %>
</body>
</html>