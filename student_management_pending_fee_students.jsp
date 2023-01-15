<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Student Management - Pending Fee Students</title>
<link href="./css/student_management_pending_fee_students.css" rel="stylesheet" type="text/css">
</head>
<body>
	<%@ include file = "header.jsp" %>
	
	
	
	<div class="pending_fee">
		Pending Fee
	</div>
	<div class="content">
		
	</div>
	<div class="pending_fee_info">
		<strong>Pending Fee Information</strong>
	</div>
	<div class="session">
		<strong>Session :</strong>
	</div>
	<div class="session_select">
		<select name="session" id="session">
			<option value="18">2018-19</option>
		</select>
	</div>
	<div class="sem">
		<strong>Sem./Year :</strong>
	</div>
	<div class="sem_select">
		<select name="sem" id="sem">
			<option value="all">All</option>
		</select>
	</div>
	<div class="status">
		<strong>Status :</strong>
	</div>
	<div class="status_select">
		<select name="status" id="status">
			<option value="a">Active</option>
		</select>
	</div>
	<div class="fts">
		<strong>FTS :</strong>
	</div>
	<div class="fts_input">
		<input type="text" name="fts" id="fts">
	</div>
	<div class="organisation">
		<strong>Organisation :</strong>
	</div>
	<div class="org_select">
		<select name="org" id="org">
			<option value="bsaitm">B. S. Anangpuria Institute Of Technology And Management</option>
		</select>
	</div>
	<div class="section">
		<strong>Section :</strong>
	</div>
	<div class="setion_select">
		<select name="section" id="section">
			<option value="all">All</option>
		</select>
	</div>
	<div class="date">
		<strong>Date :</strong>
	</div>
	<div class="date_input">
		<input type="text" name="date" id="date">
	</div>
<div class="prev">
		<img src="./images/prev.png" alt="prev" id="prev">
	</div>
	<div class="pages">
		1 to 50 of 180
	</div>
<div class="next">
		<img src="./images/next.png" alt="next" id="next">
	</div>
<div class="export_excel">
		<button id="export_excel">EXPORT TO EXCEL</button>
	</div>
<div class="search_button">
		<button id="search_button">SEARCH</button>
	</div>
	<table id="pending_fee_table">
		<tr id="table_heading">
			<th>Sr No.</th>
			<th>Section</th>
			<th>College R. No.</th>
			<th>Student Name</th>
			<th>Mobile No.</th>
			<th>Amount</th>
		</tr>
		<tr class="even_row">
			<td class="col1">1.</td>
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
			<td class="col12_row51"></td>
		</tr>
	</table>
	
	<%@ include file = "footer.jsp" %>
</body>
</html>