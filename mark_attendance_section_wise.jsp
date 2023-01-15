<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%@ page import="java.sql.*" %>

<%@ include file = "header.jsp" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Mark Attendance - Section Wise</title>
<link href="./css/mark_attendance_section_wise.css" rel="stylesheet" type="text/css">
</head>
<body>
	<div class="mark_attendance">
		Mark Attendance
	</div>
	<div class="content">
		
	</div>
	<form action="insert_student_attendance?from=insert" method="post">
	<div class="session">
		<strong>Session :</strong>
	</div>
	<div class="session_select">
		<select name="current_session" id="session">
			<option value="none">--Select Session--</option>
			<option value="2018-19">2018-19</option>
			<option value="2017-18">2017-18</option>
			<option value="2016-17">2016-17</option>
		</select>
	</div>
	<div class="sem_year">
		<strong>Sem. :</strong>
	</div>
	<div class="sem_year_select">
		<select name="sem" id="sem_year">
			<option value="none">--Select Sem.--</option>
			<option value="VIII">VIII</option>
			<option value="VII">VII</option>
			<option value="VI">VI</option>
		</select>
	</div>
	<div class="section">
		<strong>Section :</strong>
	</div>
	<div class="section_select">
		<select name="section" id="section">
			<option value="none">--Select Section--</option>
			<option value="A">A</option>
			<option value="B">B</option>
			<option value="C">C</option>
		</select>
	</div>
	<div class="subject">
		<strong>Subject :</strong>
	</div>
	<div class="subject_select">
		<select name="subject" id="subject">
			<option value="none">--Select Subject--</option>
			<option value="Advance Java">Advance Java</option>
			<option value="Distributed Operating System">Distributed Operating System</option>
			<option value="Data Warehouse and Data Mining">Data Warehouse and Data Mining</option>
			<option value="System and Network Administration">System and Network Administration</option>
			<option value="Web Engineering">Web Engineering</option>
			<option value="Advance Java Lab">Advance Java Lab</option>
			<option value="System and Network Administration Lab">System and Network Administration Lab</option>
			<option value="Web Engineering Lab">Web Engineering Lab</option>
		</select>
	</div>
	<div class="period">
		Period :
	</div>
	<div class="period_select">
		<select name="period" id="period">
			<option value="none">--Select Period--</option>
			<option value="1">1</option>
			<option value="2">2</option>
			<option value="3">3</option>
			<option value="4">4</option>
			<option value="5">5</option>
			<option value="6">6</option>
			<option value="7">7</option>
		</select>
	</div>
	<div class="date">
		<strong>Date :</strong>
	</div>
	<div class="date_input">
		<input type="date" name="attendance_date" id="date">
	</div>
	<div class="add_daily_attendance">
		<input type="submit" name="submit" value="ADD DAILY ATTENDANCE" id="add_daily_attendance">
	</div>
	</form>
	<div class="prev">
		<img src="./images/prev.png" alt="prev" id="prev">
	</div>
	<div class="pages">
		1 to 50 of 180
	</div>
	<div class="next">
		<img src="./images/next.png" alt="next" id="next">
	</div>
	
	<table id="attendance_section_wise">
		<tr id="table_heading">
			<th width="4%">Sr no.</th>
			<th>Name</th>
			<th width="6%">Roll No</th>
			<th width="7%">Date</th>
			<th width="5%">Session</th>
			<th width="9%">Sem. - Section</th>
			<th width="5%">Period</th>
			<th>Subject</th>
			<th width="7%">Attendance</th>
			<th>Created By</th>
			<th width="4%">Save</th>
		</tr>
		<%
			ResultSet rs=(ResultSet)request.getAttribute("rs");
			String student_name="";
			String rollno="";
			String section="";
			String attendance="";
			String attendance_date="";
			String current_session="";
			String sem="";
			int period=0;
			String subject="";
			String created_by="";
			if(rs!=null)
			{
				while(rs.next())
				{
					student_name=rs.getString(2);
					rollno=rs.getString(3);
					section=rs.getString(4);
					attendance=rs.getString(5);
					attendance_date=rs.getString(6);
					current_session=rs.getString(7);
					sem=rs.getString(8);
					period=rs.getInt(9);
					subject=rs.getString(10);
					created_by=rs.getString(11);
					out.print("<form action=\"update_student_attendance\" method=\"post\">");
					out.print("<tr class=\"even_row\">");
					out.print("<td class=\"col1\">1</td>");
					out.print("<td class=\"col2\">"+student_name+"</td>");
					out.print("<td class=\"col2\">"+rollno+"</td>");
					out.print("<td class=\"col2\">"+attendance_date+"</td>");
					out.print("<td class=\"col2\">"+current_session+"</td>");
					out.print("<td class=\"col2\">"+sem+" - "+section+"</td>");
					out.print("<td class=\"col2\">"+period+"</td>");
					out.print("<td class=\"col2\">"+subject+"</td>");
					out.print("<td class=\"col2\">");
					out.print("<select name=\"attendance\">");
					if(attendance.equalsIgnoreCase("none"))
					{
						out.print("<option value=\"none\" selected>Select</option>");
					}
					else
					{
						out.print("<option value=\"none\">Select</option>");
					}
					if(attendance.equalsIgnoreCase("p"))
					{
						out.print("<option value=\"P\" selected>P</option>");
					}
					else
					{
						out.print("<option value=\"P\">P</option>");
					}
					if(attendance.equalsIgnoreCase("a"))
					{
						out.print("<option value=\"A\" selected>A</option>");
					}
					else
					{
						out.print("<option value=\"A\">A</option>");
					}
					out.print("</select>");
					out.print("</td>");
					out.print("<input type=\"hidden\" name=\"rollno\" value=\""+rollno+"\">");
					out.print("<input type=\"hidden\" name=\"attendance_date\" value=\""+attendance_date+"\">");
					out.print("<input type=\"hidden\" name=\"period\" value=\""+period+"\">");
					out.print("<td class=\"col2\">"+created_by+"</td>");
					out.print("<td class=\"col12_row1\"><input type=\"submit\" name=\"submit\" value=\"SAVE\"</td>");
					out.print("</tr>");
					out.print("</form>");
				}
			}
		%>
		<tr class="odd_row">
			<td class="col1_row51"></td>
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