<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Reports - Lecture Count Report</title>
<link href="./css/reports_lecture_count_report.css" rel="stylesheet" type="text/css">
</head>
<body>
	<%@ include file = "header.jsp" %>
	
	
	
	<div class="content">
		
	</div>
	<div class="subject_lecture_report">
		<strong>Subject Lecture Report Detail</strong>
	</div>
	<div class="session">
		<strong>Session :</strong>
	</div>
	<div class="session_select">
		<select name="session" id="session">
			<option value="18">2018-19</option>
		</select>
	</div>
	<div class="view_by">
		<strong>View By :</strong>
	</div>
	<div class="view_by_select">
		<select name="view_by" id="view_by">
			<option value="none">--Select Group By--</option>
		</select>
	</div>
	<div class="subject">
		<strong>Subject :</strong>
	</div>
	<div class="subject_input">
		<input type="text" name="subject" id="subject">
	</div>
	<div class="generate_report_button">
		<button id="generate_report_button">GENERATE REPORT</button>
	</div>
	
	<%@ include file = "footer.jsp" %>
</body>
</html>