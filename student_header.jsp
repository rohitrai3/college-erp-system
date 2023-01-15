<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%
	String official_id=(String)session.getAttribute("session_id");
	if(official_id==null)
	{
		response.sendRedirect("index.jsp");
	}
	String session_name=(String)session.getAttribute("session_name");
	String session_image=(String)session.getAttribute("session_image");
%>
 
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
	<link rel="icon" href="./images/c_logo.png">
<link href="./css/student_header.css" rel="stylesheet" type="text/css">
</head>

<body>
	<div class="top">
		<div class="college_logo">
			<img src="./images/college_logo.png" alt="college_logo" id="college_logo">
		</div>
		<div class="college_name">
			B. S. Anangpuria Institute Of Technology And Management
		</div>
		<div class="welcome">
			WELCOME <%= session_name %> / STUDENT DASHBOARD
		</div>
		<div class="bsaitm_name">
			BSAITM
		</div>
		<div class="org">
			ORGANIZATION :
		</div>
		<div class="setting">
			<div class="setting_logo">
				<img src="./images/setting.png" alt="setting" id="setting">
			</div>
			<div class="logout">
				<div class="logout_pic">
					<img src="./images/user/<%= session_image %>" alt="<%= session_image %>" id="logout_pic">
				</div>
				<div class="logout_name">
					USER: <strong><%= session_name %></strong>
				</div>
				<div class="change_password">
					<button id="change_password">CHANGE PASSWORD</button>
				</div>
				<div class="signout">
					<a href="logout"><button id="signout">SIGN OUT</button></a>
				</div>
			</div>
		</div>
		<div class="cname">
			ROHtech
		</div>
		<div class="nav">
			<div class="nav_dashboard">
				<a href="student_dashboard.jsp">MY DASHBOARD</a>
			</div>
			<div class="nav_my_profile">
				<a href="my_profile_personal?page_from=student">MY PROFILE</a>
			</div>
			<div class="nav_my_attendance">
				<a href="student_my_attendance">MY ATTENDANCE</a>
			</div>
			<div class="nav_mark_attendance">
				MY ACADEMICS
				<div class="mark_attendance_submenu">
					<div class="section_wise">
						 <a href="mark_attendance_section_wise.jsp">Time Table</a> 
					</div>
					<div class="group_wise">
						 <a href="mark_attendance_group_wise.jsp">Syllabus</a> 
					</div>
					<div class="group_wise">
						 <a href="mark_attendance_group_wise.jsp">Assignments</a> 
					</div>
					<div class="group_wise">
						 <a href="mark_attendance_group_wise.jsp">Circulars</a> 
					</div>
					<div class="group_wise">
						 <a href="mark_attendance_group_wise.jsp">Event Calendar</a> 
					</div>
				</div>
			</div>
			<div class="nav_student_management">
				 FEE
				<div class="student_management_submenu">
					<div class="student_profile">
						 <a href="student_management_student_profile.jsp">Fee Details</a> 
					</div>
					<div class="student_reports">
						 <a href="student_management_student_reports.jsp">Online Fee Payment</a> 
					</div>
				</div>
			</div>
			<div class="nav_examination">
				 COMMUNICATION 
				<div class="examinaton_submenu">
					<div class="exam_schedules">
						 <a href="examinaton_exam_schedules.jsp">Compose</a> 
					</div>
					<div class="enter_marks">
						 <a href="examinaton_enter_marks.jsp">Inbox</a> 
					</div>
					<div class="enter_grades">
						 <a href="examinaton_enter_grades.jsp">Outbox</a> 
					</div>
				</div>
			</div>
			<div class="nav_communications">
				 EVENT GALLERY 
			</div>
			<div class="nav_lecture">
				 REQUESTS
				<div class="timetable_submenu">
					<div class="timetable_plans">
						 <a href="timetable_lecture_plans.jsp">Transport Requests</a> 
					</div>
					<div class="timetable_schedules">
						 <a href="timetable_lecture_plan_schedules.jsp">Student Leaves</a> 
					</div>
				</div>
			</div>
			<div class="nav_reports">
				 TRANSACTIONS
				<div class="reports_submenu">
					<div class="reports_dashboard">
						 <a href="reports_student_dashboard.jsp">Issue Book Histories</a> 
					</div>
					<div class="reports_attendance">
						 <a href="reports_attendance_detailed_report.jsp">Search Books</a> 
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>
