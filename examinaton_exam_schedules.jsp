<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Examination - Exam Schedules</title>
<link href="./css/examinaton_exam_schedules.css" rel="stylesheet" type="text/css">
</head>
<body>
	<%@ include file = "header.jsp" %>
	
	
	
	<div class="exam_schedules_text">
		Exam Schedules
	</div>
	<div class="content">
		
	</div>
	<div class="session">
		<strong>Session :</strong>
	</div>
	<div class="session_select">
		<select name="session" id="session">
			<option value="18">2018-19</option>
		</select>
	</div>
	<div class="view_by">
		<strong>View By :</strong>
	</div>
	<div class="view_by_select">
		<select name="department" id="department">
			<option value="section">Section</option>
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
	<div class="assessment">
		<strong>Assessment :</strong>
	</div>
	<div class="assessment_select">
		<select name="assessment" id="assessment">
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
	<div class="search_input">
		<input type="text" name="search" id="search">
	</div>
	<div class="search_button">
		<button id="search_button">SEARCH</button>
	</div>
	<div class="add_exam_schedules">
		<button id="add_exam_schedules">ADD EXAM SCHEDULE</button>
	</div>
	<div class="save_button">
		<button id="save_button">SAVE</button>
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
			<th>Sr no.</th>
			<th>Data Port</th>
			<th>SUB Activity</th>
			<th>Update</th>
			<th>Delete</th>
			<th>Seq</th>
			<th>Entry Status</th>
			<th>Session</th>
			<th>Section</th>
			<th>Assessment</th>
			<th>Activity Name</th>
			<th>Subject</th>
			<th>Max. Marks</th>
			<th>Is Prac.</th>
		</tr>
		<tr class="even_row">
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
			<td class="col2"></td>
			<td class="col2"></td>
			<td class="col2"></td>
			<td class="col12_row1"><input type="checkbox" name="check"></td>
		</tr>
		<tr class="odd_row">
			<td class="col2">2</td>
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
			<td class="col2"></td>
			<td class="col12_row1"><input type="checkbox" name="check"></td>
		</tr>
		<tr class="even_row">
			<td class="col2_row51">3</td>
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
			<td class="col2_row51"></td>
			<td class="col12_row51"><input type="checkbox" name="check"></td>
		</tr>
	</table>
	
	<%@ include file = "footer.jsp" %>
</body>
</html>