<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Reports - Absent Student SMS History</title>
<link href="./css/reports_absent_student_sms_history.css" rel="stylesheet" type="text/css">
</head>
<body>
	<%@ include file = "header.jsp" %>
	
	
	
	<div class="absent_student">
		Absent Student SMS History
	</div>
	<div class="content">
		
	</div>
	<div class="from_date">
		<strong>From Date :</strong>
	</div>
	<div class="from_date_inout">
		<input type="text" name="from_date" id="from_date">
	</div>
	<div class="to_date">
		<strong>To Date :</strong>
	</div>
	<div class="to_date_input">
		<input type="text" name="to_date" id="to_date">
	</div>
	<table id="absent_student_table">
		<tr id="table_heading">
			<th>Sr no.</th>
			<th>Details</th>
			<th>Created Date</th>
			<th>Success Send SMS</th>
			<th>Fail Send SMS</th>
		</tr>
		<tr class="even_row">
		    <td class="col2">1</td>
			<td class="col2"></td>
			<td class="col2"></td>
			<td class="col2"></td>
			<td class="col12_row1"></td>
		</tr>
		<tr class="odd_row">
			<td class="col2_row51">2</td>
			<td class="col2_row51"></td>
			<td class="col2_row51"></td>
			<td class="col2_row51"></td>
			<td class="col12_row51"></td>
		</tr>
	</table>
	
	<%@ include file = "footer.jsp" %>
</body>
</html>