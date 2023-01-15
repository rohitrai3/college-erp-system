<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@ page import="java.sql.*" %>
    
<%@ include file="admin_header.jsp" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Administrator Mark Attendance</title>
<link href="./css/admin_mark_attendance.css" rel="stylesheet" type="text/css">
</head>
<body>
	<form action="update_admin_mark_attendance" method="post">
	<div class="content">
		
	</div>
		<div class="date">
			Select Date :
		</div>
		<div class="date_select">
		  <input type="date" name="date" id="date">
		</div>
		<div class="employee">
			Select Employee :
		</div>
		<div class="employee_select">
			<input list="employees" name="employee">
			<datalist id="employees">
				<%
					ResultSet rs=(ResultSet)request.getAttribute("rs");
					String name="";
					String email="";
					while(rs.next())
					{
						name=rs.getString(1);
						email=rs.getString(2);
						out.print("<option value=\""+email+"\">"+name+"</option>");
					}
				%>
			</datalist>
		</div>
		<div class="attendance">
			Select Attendance :
		</div>
		<div class="attendance_select">
			<select name="attendance" id="attendance">
				<option value="none">--Select Attendance--</option>
				<option value="P">Present</option>
				<option value="A">Absent</option>
				<option value="L">Leave</option>
			</select>
		</div>
		<div class="save">
			<input type="submit" name="submit" value="SAVE" id="save">
		</div>
	</form>
	<%@ include file="footer.jsp" %>
</body>
</html>