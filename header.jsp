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
<link href="./css/header.css" rel="stylesheet" type="text/css">
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
			WELCOME <%= session_name %> / TEACHER DASHBOARD
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
				<a href="dashboard.jsp">DASHBOARD</a>
			</div>
			<div class="nav_my_profile">
				<a href="my_profile_personal?page_from=my_profile.jsp">MY PROFILE</a>
			</div>
			<div class="nav_my_attendance">
				<a href="my_attendance">MY ATTENDANCE</a>
			</div>
			<div class="nav_mark_attendance">
				<a href="mark_attendance_section_wise.jsp">MARK ATTENDANCE</a> 
			</div>
			<div class="nav_student_management">
				 STUDENT MANAGEMENT 
				<div class="student_management_submenu">
					<div class="student_profile">
						 <a href="update_user?from=teacher">Student Profile</a> 
					</div>
					<div class="student_reports">
						 <a href="student_management_student_reports.jsp">Student Reports</a> 
					</div>
					<div class="ptm">
						 <a href="student_management_ptm.jsp">PTM</a> 
					</div>
					<div class="fee_students">
						 <a href="student_management_pending_fee_students.jsp">Pending Fee Students</a> 
					</div>
				</div>
			</div>
			<div class="nav_examination">
				 EXAMINATION 
				<div class="examinaton_submenu">
					<div class="exam_schedules">
						 <a href="examinaton_exam_schedules.jsp">Exam Schedules</a> 
					</div>
					<div class="enter_marks">
						 <a href="examinaton_enter_marks.jsp">Enter Marks</a> 
					</div>
					<div class="enter_grades">
						 <a href="examinaton_enter_grades.jsp">Enter Grades</a> 
					</div>
					<div class="activity_marks">
						 <a href="examinaton_sub_activity_marks.jsp">Sub-Activity Marks</a> 
					</div>
					<div class="student_health">
						 <a href="examinaton_student_health.jsp">Student Health</a> 
					</div>
					<div class="term_attendance">
						 <a href="examinaton_term_attendance.jsp">Term Attendance</a> 
					</div>
					<div class="student_report">
						 <a href="examinaton_student_report.jsp">Student Report</a> 
					</div>
					<div class="student_assignments">
						 <a href="examinaton_assignments.jsp">Assignments</a> 
					</div>
				</div>
			</div>
			<div class="nav_communications">
				 COMMUNICATIONS 
				<div class="comm_submenu">
					<div class="comm_my_leaves">
						 <a href="communication_my_leaves.jsp">My Leaves</a> 
					</div>
					<div class="comm_compose">
						 <a href="communication_compose.jsp">Compose</a> 
					</div>
					<div class="comm_inbox">
						 <a href="communication_inbox.jsp">Inbox</a> 
					</div>
					<div class="comm_outbox">
						 <a href="communication_outbox.jsp">Outbox</a> 
					</div>
					<div class="comm_student_leaves">
						 <a href="communication_student_leaves.jsp">Student Leaves</a> 
					</div>
					<div class="comm_circulars">
						 <a href="communication_circulars.jsp">Circulars</a> 
					</div>
					<div class="comm_calendar">
						 <a href="communication_calendar.jsp">Calendar</a> 
					</div>
				</div>
			</div>
			<div class="nav_lecture">
				 LECTURE PLAN / TIMETABLE 
				<div class="timetable_submenu">
					<div class="timetable_plans">
						 <a href="timetable_lecture_plans.jsp">Lecture plans</a> 
					</div>
					<div class="timetable_schedules">
						 <a href="timetable_lecture_plan_schedules.jsp">Lecture Plan Schedules</a> 
					</div>
					<div class="timetable_diaries">
						 <a href="timetable_teacher_diaries.jsp">Teacher Diaries</a> 
					</div>
					<div class="timetable_timetable">
						 <a href="timetable_timetable.jsp">Time Table</a> 
					</div>
				</div>
			</div>
			<div class="nav_reports">
				 REPORTS 
				<div class="reports_submenu">
					<div class="reports_dashboard">
						 <a href="reports_student_dashboard.jsp">Student Dashboard</a> 
					</div>
					<div class="reports_attendance">
						 <a href="reports_attendance_detailed_report.jsp">Attendance Detailed Report</a> 
					</div>
					<div class="reports_subject_wise_attendance">
						 <a href="reports_subject_wise_attendance_report.jsp">Subject Wise Attendance Report</a> 
					</div>
					<div class="reports_short_attendance">
						 <a href="reports_short_attendance_report.jsp">Short Attendance Report</a> 
					</div>
					<div class="reports_book">
						 <a href="reports_issue_book_hostories.jsp">Issue Book Histories</a> 
					</div>
					<div class="reports_salary">
						 <a href="reports_salary_slip.jsp">Salary Slip</a> 
					</div>
					<div class="reports_attendance_not_marked">
						 <a href="reports_attendance_not_marked_report.jsp">Attendance Not Marked Report</a> 
					</div>
					<div class="reports_count">
						 <a href="reports_lecture_count_report.jsp">Lecture Count Report</a> 
					</div>
					<div class="reports_absent">
						 <a href="reports_absent_student_sms_history.jsp">Absent Student SMS History</a> 
					</div>
					<div class="reports_activity">
						 <a href="reports_activity_reports.jsp">Activity Reports</a> 
					</div>
				</div>
			</div>
			<div class="nav_alerts">
				 ALERTS / APPROVAL 
				<div class="alerts_submenu">
					<div class="alerts_employee_leave">
						 <a href="alerts_employee_leave_approval.jsp">Employee Leave Approval</a> 
					</div>
					<div class="alerts_student_leave">
						 <a href="alerts_student_leave_approval.jsp">Student Leave Approval</a> 
					</div>
					<div class="alerts_inventory">
						 <a href="alerts_inventory_requisition.jsp">Inventory Requisition</a> 
					</div>
					<div class="alerts_inventory_approval">
						 <a href="alerts_inventory_requisition_approval.jsp">Inventory Requisition Approval</a> 
					</div>
					<div class="alerts_inventory_po">
						 <a href="alerts_inventory_po_approval.jsp">Inventory PO Approval</a> 
					</div>
					<div class="alerts_tasks">
						 <a href="alerts_my_tasks.jsp">My Tasks</a> 
					</div>
					<div class="alerts_invoice">
						 <a href="alerts_invoice_payment_approval.jsp">Invoice Payment Approval</a> 
					</div>
					<div class="alerts_waiver">
						 <a href="alerts_student_fee_waiver_approval.jsp">Student Fee: Waiver Approval</a> 
					</div>
					<div class="alerts_concession">
						 <a href="alerts_student_fee_concession_approval.jsp">Student Fee: Concession Approval</a> 
					</div>
					<div class="alerts_cancellation">
						 <a href="alerts_student_fee_cancellation_approval.jsp">Fee Cancellation Approval</a> 
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>
