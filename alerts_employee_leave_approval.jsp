<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>ALerts/Approval - Employee Leave Approval</title>
<link href="./css/alerts_employee_leave_approval.css" rel="stylesheet" type="text/css">
</head>
<body>
	<%@ include file = "header.jsp" %>
	
	
	
	<div class="employee_leave_requests">
		Employee Leave Requests
	</div>
	<div class="content">
		
	</div>
	<div class="leave_type">
		<strong>Leave Type :</strong>
	</div>
	<div class="leave_type_select">
		<select name="leave_type" id="leave_type">
			<option value="none">--Select--</option>
		</select>
	</div>
	<div class="status">
		<strong>Status :</strong>
	</div>
	<div class="status_select">
		<select name="status" id="status">
			<option value="none">--Status--</option>
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
	<div class="search_input">
		<input type="text" name="search" id="search">
	</div>
	<div class="search_button">
		<button id="search_button">SEARCH</button>
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
	<table id="employee_leave_requests_table">
		<tr id="table_heading">
			<th><input type="checkbox" id="check1"></th>
			<th>Sr no.</th>
			<th>Detail</th>
			<th>Request By</th>
			<th>Status</th>
			<th>From Date</th>
			<th>To Date</th>
			<th>Leave Type</th>
			<th>Approved/Rejected By</th>
			<th>Reason</th>
			<th>Created On</th>
			<th>Download Upload</th>
		</tr>
		<tr class="even_row">
		    <td class="col2"><input type="checkbox" id="check2"></td>
			<td class="col2">1</td>
			<td class="col2"></td>
			<td class="col2"></td>
			<td class="col2"></td>
			<td class="col2"></td>
			<td class="col2"></td>
			<td class="col2"></td>
			<td class="col2"></td>
			<td class="col2"></td>
			<td class="col2"></td>
			<td class="col12_row1"></td>
		</tr>
		<tr class="odd_row">
			<td class="col2_row51"><input type="checkbox" id="check3"></td>
			<td class="col2_row51">2</td>
			<td class="col2_row51"></td>
			<td class="col2_row51"></td>
			<td class="col2_row51"></td>
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