<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Student Management - Student Reports</title>
<link href="./css/student_management_student_reports.css" rel="stylesheet" type="text/css">
</head>
<body>
	<%@ include file = "header.jsp" %>
	
	
	
	<div class="download_report">
		Download Student Report
	</div>
	<div class="content">
		
	</div>
	<div class="prev">
		<img src="./images/prev.png" alt="prev" id="prev">
	</div>
	<div class="pages">
		1 to 50
	</div>
	<div class="next">
		<img src="./images/next.png" alt="next" id="next">
	</div>
	<table id="report_table">
		<tr id="table_heading">
			<th id="sr_no">Sr No.</th>
			<th>Download Report</th>
		</tr>
		<tr class="even_row">
			<td class="col1">1.</td>
			<td class="col2_row1"></td>
		</tr>
		<tr class="odd_row">
			<td class="col1_row51">2.</td>
			<td class="col12_row51"></td>
		</tr>
	</table>
	
	<%@ include file = "footer.jsp" %>
</body>
</html>