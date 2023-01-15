<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Reports - Short Attendance Report</title>
<link href="./css/reports_short_attendance_report.css" rel="stylesheet" type="text/css">
</head>
<body>
	<%@ include file = "header.jsp" %>
	
	
	
	<div class="content">
		
	</div>
	<div class="short_attendance_report">
		<strong>Short Attendance Report</strong>
	</div>
	<div class="session">
		<strong>Session :</strong>
	</div>
	<div class="session_select">
		<select name="session" id="session">
			<option value="18">2018-19</option>
		</select>
	</div>
	<div class="excludable_subject">
		<strong>Excludable Subject :</strong>
	</div>
	<div class="excludable_subject_input">
		<input type="text" name="excludable_subject" id="excludable_subject">
	</div>
	<div class="email_subject">
		<strong>Email Subject :</strong>
	</div>
	<div class="email_subject_input">
		<input type="text" name="email_subject" id="email_subject" value="Short Attendance">
	</div>
	<div class="employee">
		<strong>Employee :</strong>
	</div>
	<div class="employee_select">
		<select name="employee" id="employee">
			<option value="none">--Select Employee--</option>
		</select>
	</div>
	<div class="from_date">
		<strong>From Date :</strong>
	</div>
	<div class="from_date_input">
		<input type="text" name="from_date" id="from_date">
	</div>
	<div class="attendance_below">
		<strong>Attendance Below % :</strong>
	</div>
	<div class="attendance_below_input">
		<input type="text" name="attendance_below" id="attendance_below">
	</div>
	<div class="message">
		<strong>Message :</strong>
	</div>
	<div class="message_area">
		<textarea name="message" id="message"></textarea>
	</div>
	<div class="report_view_by">
		<strong>Report View By :</strong>
	</div>
	<div class="report_view_by_select">
		<select name="report_view_by" id="report_view_by">
			<option value="none">--Select Report View By--</option>
		</select>
	</div>
	<div class="send_to">
		<strong>Email/SMS Send To :</strong>
	</div>
	<div class="check">
		<input type="checkbox" name="student" id="check1">Student
		<input type="checkbox" name="father" id="check2">Father
		<input type="checkbox" name="mother" id="check3">Mother
	</div>
	<div class="template">
		<strong>Template :</strong>
	</div>
	<div class="template_select">
		<select name="template" id="template">
			<option value="none">--Select Template--</option>
		</select>
	</div>
	<div class="student_status">
		<strong>Student Status :</strong>
	</div>
	<div class="student_status_select">
		<select name="student_status" id="student_status">
			<option value="none">--Select Status--</option>
		</select>
	</div>
	<div class="to_date">
		<strong>To Date :</strong>
	</div>
	<div class="to_date_input">
		<input type="text" name="to_date" id="to_date">
	</div>
	<div class="sms_template">
		<strong>SMS Template :</strong>
	</div>
	<div class="sms_template_select">
		<select name="sms_template" id="sms_template">
			<option value="none">--Select SMS Template--</option>
		</select>
	</div>
	<div class="send">
		<button id="send">SEND EMAIL</button>
	</div>
	<div class="generate_report">
		<button id="generate_report">GENERATE REPORT</button>
	</div>
	<div class="download_document">
		<button id="download_document">DOWNLOAD DOCUMENT</button>
	</div>
	<div class="send_sms">
		<button id="send_sms">SEND SMS</button>
	</div>
	
	<%@ include file = "footer.jsp" %>
</body>
</html>