<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Alerts/Approval - Student Leave Approval</title>
<link href="./css/alerts_student_leave_approval.css" rel="stylesheet" type="text/css">
</head>
<body>
	<%@ include file = "header.jsp" %>
	
	
	
	<div class="student_leave_requests">
		Student Leave Requests
	</div>
	<div class="content">
		
	</div>
	<table id="student_leave_requests_table">
		<tr id="table_heading">
			<th>Sr no.</th>
			<th>Detail</th>
			<th>Status</th>
			<th>From Date</th>
			<th>To Date</th>
			<th>Approved/Rejected By</th>
			<th>Reason</th>
			<th>Created On</th>
		</tr>
		<tr class="even_row">
		    <td class="col2">1</td>
			<td class="col2"></td>
			<td class="col2"></td>
			<td class="col2"></td>
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
			<td class="col2_row51"></td>
			<td class="col2_row51"></td>
			<td class="col2_row51"></td>
			<td class="col12_row51"></td>
		</tr>
	</table>
	
	<%@ include file = "footer.jsp" %>
</body>
</html>