<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Examination - Term Attendance</title>
<link href="./css/examinaton_term_attendance.css" rel="stylesheet" type="text/css">
</head>
<body>
	<%@ include file = "header.jsp" %>
	
	
	
	<div class="attendance_remarks">
		Attendance / C.T. Remarks
	</div>
	<div class="content">
		
	</div>
	<div class="year">
		<strong>Academic Year :</strong>
	</div>
	<div class="year_select">
		<select name="year" id="year">
			<option value="18">2018-19</option>
		</select>
	</div>
	<div class="class_text">
		<strong>Class :</strong>
	</div>
	<div class="class_select">
		<select name="class" id="class">
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
	<div class="term">
		<strong>Term :</strong>
	</div>
	<div class="term_select">
		<select name="term" id="term">
			<option value="all">All</option>
		</select>
	</div>
	<div class="add_student">
		<button id="add_student">ADD STUDENT</button>
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
	<table id="term_attendance_table">
		<tr id="table_heading">
			<th><input type="checkbox" name="check"></th>
			<th>Sr no.</th>
			<th>Details</th>
			<th>Delete</th>
			<th>Enter Attendance</th>
			<th>Enter Remarks</th>
			<th>Enter Health</th>
			<th>Academic Years</th>
			<th>Class - Section</th>
			<th>Term Name</th>
			<th>Working Days</th>
		</tr>
		<tr class="even_row">
			<td class="col1"><input type="checkbox" name="check"></td>
		  <td class="col2">1.</td>
			<td class="col2"></td>
			<td class="col2"></td>
			<td class="col2"></td>
			<td class="col2"></td>
		  <td class="col2"></td>
		  <td class="col2"></td>
			<td class="col2"></td>
			<td class="col2"></td>
			<td class="col2_row1"></td>
		</tr>
		<tr class="odd_row">
			<td class="col1_row51"><input type="checkbox" name="check"></td>
			<td class="col2_row51">2.</td>
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