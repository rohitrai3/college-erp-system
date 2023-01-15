<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Student Management - PTM</title>
<link href="./css/student_management_ptm.css" rel="stylesheet" type="text/css">
</head>
<body>
	<%@ include file = "header.jsp" %>
	
	
	
	<div class="ptm_text">
		PTM
	</div>
	<div class="content">
		
	</div>
	<div class="add_button">
		<button id="add_button">ADD</button>
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
	<table id="ptm_table">
		<tr id="table_heading">
			<th>Sr No.</th>
			<th>View Detail</th>
			<th>Session</th>
			<th>Organization</th>
			<th>Sem./Year</th>
			<th>Date</th>
			<th>PTM By</th>
			<th>Purpose</th>
		</tr>
		<tr class="even_row">
			<td class="col1">1.</td>
			<td class="col2"></td>
			<td class="col2"></td>
			<td class="col2"></td>
			<td class="col2"></td>
			<td class="col2"></td>
			<td class="col2"></td>
			<td class="col2_row1"></td>
		</tr>
		<tr class="odd_row">
			<td class="col1_row51">2.</td>
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