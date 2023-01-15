<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Reports - Attendance Detailed Report</title>
<link href="./css/reports_attendance_detailed_report.css" rel="stylesheet" type="text/css">
</head>
<body>
	<%@ include file = "header.jsp" %>
	
	
	
	<div class="content">
		
	</div>
	<div class="attendance_info">
		<strong>Attendance Detail Report Information</strong>
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
	<div class="student_type_input">
		<input type="text" name="student_type" id="student_type">
	</div>
	<div class="gender">
		<strong>Gender :</strong>
	</div>
	<div class="gender_select">
		<select name="gender" id="gender">
			<option value="none">--Select Gender--</option>
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
	<div class="student_text">
		<strong>Student :</strong>
	</div>
	<div class="student_input">
		<input type="text" name="student" id="student">
	</div>
	<div class="from_date">
		<strong>From Date :</strong>
	</div>
	<div class="from_date_input">
		<input type="text" name="from_date" id="from_date">
	</div>
	<div class="to_date">
		<strong>To Date :</strong>
	</div>
	<div class="to_date_input">
		<input type="text" name="to_date" id="to_date">
	</div>
	<div class="attendance_report_button">
		<button id="attendance_report_button">ATTENDANCE REPORT</button>
	</div>
	<div class="absent_report_button">
		<button id="absent_report_button">ABSENT REPORT</button>
	</div>
	<div class="sem_button">
		<button id="sem_button">SEM./YEAR ATTENDANCE REPORT</button>
	</div>
	
	<%@ include file = "footer.jsp" %>
</body>
</html>