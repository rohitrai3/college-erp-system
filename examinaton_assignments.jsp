<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Examination - Assignments</title>
<link href="./css/examinaton_assignments.css" rel="stylesheet" type="text/css">
</head>
<body>
	<%@ include file = "header.jsp" %>
	
	
	
	<div class="assignments">
		Assignments
	</div>
	<div class="content">
		
	</div>
	<div class="view_by">
		<strong>View By :</strong>
	</div>
	<div class="view_by_select">
		<select name="view_by" id="view_by">
			<option value="section">Section</option>
		</select>
	</div>
	<div class="organisation">
		<strong>Organisation :</strong>
	</div>
	<div class="organisation_select">
		<select name="organisation" id="organisation">
			<option value="all">All</option>
		</select>
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
	<div class="section">
		<strong>Section :</strong>
	</div>
	<div class="section_select">
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
	<div class="created_by">
		<strong>Created By :</strong>
	</div>
	<div class="created_by_select">
		<select name="created_by" id="created_by">
			<option value="all">All</option>
		</select>
	</div>
	<div class="search_input">
		<input type="text" name="search" id="search">
	</div>
	<div class="search_button">
		<button id="search_button">SEARCH</button>
	</div>
	<div class="add_assignment">
		<button id="add_assignment">ADD ASSIGNMENT</button>
	</div>
	<div class="export_pdf">
		<button id="export_pdf">EXPORT IN PDF</button>
	</div>
	<div class="export_excel">
		<button id="export_excel">EXPORT IN EXCEL</button>
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
	<table id="assignment_table">
		<tr id="table_heading">
			<th><input type="checkbox" name="check"></th>
			<th>Sr no.</th>
			<th>Detail</th>
			<th>Session</th>
			<th>Course</th>
			<th>Term</th>
			<th>Section</th>
			<th>Subject</th>
			<th>Assignment Name</th>
			<th>Assignment Type</th>
			<th>Date</th>
			<th>Created By</th>
		</tr>
		<tr class="even_row">
			<td class="col1"><input type="checkbox" name="check"></td>
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
			<td class="col1_row51"><input type="checkbox" name="check"></td>
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