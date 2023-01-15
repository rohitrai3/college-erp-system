<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Reports - Activity Reports</title>
<link href="./css/reports_activity_reports.css" rel="stylesheet" type="text/css">
</head>
<body>
	<%@ include file = "header.jsp" %>
	
	
	
	<div class="content">
		
	</div>
	<div class="activity_report">
		<strong>Activity Report Information</strong>
	</div>
	<div class="session">
		<strong>Session :</strong>
	</div>
	<div class="session_select">
		<select name="session" id="session">
			<option value="18">2018-19</option>
		</select>
	</div>
	<div class="report">
		<strong>Report Based On :</strong>
	</div>
	<div class="report_select">
		<select name="report" id="report">
			<option value="none">--Select Report Type--</option>
		</select>
	</div>
	<div class="subject">
		<strong>Subject :</strong>
	</div>
	<div class="subject_select">
		<select name="subject" id="subject">
			<option value="none">--Select Subject--</option>
		</select>
	</div>
	<div class="student_type">
		<strong>Student Type :</strong>
	</div>
	<div class="student_type_select">
		<select name="student_type" id="student_type">
			<option value="all">--All Student Type--</option>
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
	<div class="marks">
		<strong>Marks :</strong>
	</div>
	<div class="radio1">
		<input type="radio" name="actual" id="actual">Actual
		<input type="radio" name="converted" id="converted">Converted
	</div>
	<div class="excel_report_button">
		<button id="excel_report_button">CUMULATIVE EXCEL REPORT</button>
	</div>
	<div class="subject_report">
		<button id="subject_report">SUBJECT REPORT</button>
	</div>
	
	<%@ include file = "footer.jsp" %>
</body>
</html>