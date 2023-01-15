<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Lecture Plan / Timetable - Lecture Plans</title>
<link href="./css/timetable_lecture_plans.css" rel="stylesheet" type="text/css">
</head>
<body>
	<%@ include file = "header.jsp" %>
	
	
	
	<div class="lesson_plan_schedules">
		Lesson Plan Schedules
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
		<button id="add_lesson_button">ADD LESSON PLAN SCHEDULE</button>
	</div>
	<div class="generate_button">
		<button id="generate_button">GENERATE SCHEDULE REPORT</button>
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
	<table id="student_table">
		<tr id="table_heading">
			<th><input type="checkbox" name="check"></th>
			<th>Sr no.</th>
			<th>Schedules</th>
			<th>Copy Schedule From</th>
			<th>Academic Year</th>
			<th>Class</th>
			<th>Section</th>
			<th>Subject</th>
		</tr>
		<tr class="even_row">
			<td class="col1"><input type="checkbox" name="check"></td>
		    <td class="col2">1</td>
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
			<td class="col12_row51"></td>
		</tr>
	</table>
	
	<%@ include file = "footer.jsp" %>
</body>
</html>