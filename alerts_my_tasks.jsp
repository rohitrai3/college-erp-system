<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Alerts / Approval - My Tasks</title>
<link href="./css/alerts_my_tasks.css" rel="stylesheet" type="text/css">
</head>
<body>
	<%@ include file = "header.jsp" %>
	
	
	
	<div class="my_tasks">
		My Tasks
	</div>
	<div class="content">
		
	</div>
	<div class="assigned_by">
		<strong>Assigned By :</strong>
	</div>
	<div class="assigned_by_select">
		<select name="assigned_by" id="assigned_by">
			<option value="all">All</option>
		</select>
	</div>
	<div class="status">
		<strong>Status :</strong>
	</div>
	<div class="status_select">
		<select name="status" id="status">
			<option value="all">All</option>
		</select>
	</div>
	<div class="export_excel">
		<button id="export_excel">EXPORT TO EXCEL</button>
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
			<th>Details</th>
			<th>Status</th>
			<th>Priority</th>
			<th>Task</th>
			<th>Assigned By</th>
			<th>Creation Date</th>
		</tr>
		<tr class="even_row">
		    <td class="col2"><input type="checkbox" id="check2"></td>
			<td class="col2">1</td>
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
			<td class="col12_row51"></td>
		</tr>
	</table>
	
	<%@ include file = "footer.jsp" %>
</body>
</html>