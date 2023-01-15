<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Reports - Subject Wise Attendance Report</title>
<link href="./css/reports_subject_wise_attendance_report.css" rel="stylesheet" type="text/css">
</head>
<body>
	<%@ include file = "header.jsp" %>
	
	
	
	<div class="content">
		
	</div>
	<div class="attendance_report">
		<strong>Subject Wise Attendance Report</strong>
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
	<div class="report_order_by">
		<strong>Report Order By :</strong>
	</div>
	<div class="report_order_by_select">
		<select name="report_order_by" id="report_order_by">
			<option value="none">--Select Order By--</option>
		</select>
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
	<div class="generate_report_button">
		<button id="generate_report_button">GENERATE REPORT</button>
	</div>
	
	<%@ include file = "footer.jsp" %>
</body>
</html>