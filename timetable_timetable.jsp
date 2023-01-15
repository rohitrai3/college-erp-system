<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Leccture Plan / Timetable - Timetable</title>
<link href="./css/timetable_timetable.css" rel="stylesheet" type="text/css">
</head>
<body>
	<%@ include file = "header.jsp" %>
	
	
	
	<div class="time_table">
		Time Table
	</div>
	<div class="content">
		
	</div>
	<div class="terms_type">
		<strong>Terms Type :</strong>
	</div>
	<div class="terms_type_select">
		<select name="terms_type" id="terms_type">
			<option value="none">--Select Terms Type--</option>
		</select>
	</div>
	<table id="time_table_table">
		<tr id="table_heading">
			<th>Days / Periods</th>
			<th>Monday</th>
			<th>Tuesday</th>
			<th>Thursday</th>
			<th>Friday</th>
		</tr>
		<tr class="even_row">
		    <td class="col1">1</td>
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
			<td class="col12_row51"></td>
		</tr>
	</table>
	
	<%@ include file = "footer.jsp" %>
</body>
</html>