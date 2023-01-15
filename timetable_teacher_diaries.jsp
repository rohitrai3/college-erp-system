<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Lecture Plan / Timetable - Teacher Diaries</title>
<link href="./css/timetable_teacher_diaries.css" rel="stylesheet" type="text/css">
</head>
<body>
	<%@ include file = "header.jsp" %>
	
	
	
	<div class="teacher_diaries">
		Teacher Diaries
	</div>
	<div class="content">
		
	</div>
	<div class="academic_year">
		<strong>Academic Year :</strong>
	</div>
	<div class="academic_year_select">
		<select name="academic_year" id="academic_year">
			<option value="18">2018-19</option>
		</select>
	</div>
	<div class="class">
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
	<div class="subject">
		<strong>Subject :</strong>
	</div>
	<div class="subject_select">
		<select name="subject" id="subject">
			<option value="all">All</option>
		</select>
	</div>
	<div class="add_lesson_button">
		<button id="add_lesson_button">ADD TEACHER DIARY</button>
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
	<table id="teacher_diaries_table">
		<tr id="table_heading">
			<th>Sr no.</th>
			<th>Edit</th>
			<th>Students</th>
			<th>Academic Year</th>
			<th>Class - Section</th>
			<th>Subject</th>
			<th>Coverage Status</th>
			<th>Topic</th>
			<th>Sub Topic Covered</th>
			<th>Start Date</th>
			<th>Till Date</th>
			<th>N. B. Collection Date</th>
			<th>N. B. Return Date</th>
		</tr>
		<tr class="even_row">
		    <td class="col1">1</td>
			<td class="col2"></td>
			<td class="col2"></td>
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
			<td class="col1_row51">2</td>
			<td class="col2_row51"></td>
			<td class="col2_row51"></td>
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