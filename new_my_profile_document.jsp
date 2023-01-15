<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%@ include file="admin_header.jsp" %>

<% 
	String user_id=(String)session.getAttribute("employee_id");
	String employee_name=(String)session.getAttribute("employee_name");
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>My Profile - Document</title>
<link href="./css/new_my_profile_document.css" rel="stylesheet" type="text/css">
</head>
<body>
	
	
	
	
	<div class="employees">
		<div class="employees_text1">
			Employees
		</div>
		<div class="employees_triangle">
			
		</div>
		<div class="employees_detail">
			Detail
		</div>
	</div>
	<div class="staff">
		<strong><%= (String)session.getAttribute("type") %> Information</strong>
	</div>
	<div class="employee_name">
		<strong>Employee Name : <%= employee_name %></strong>
	</div>
	<form action="update_my_profile_document" method="post">
	<input type="hidden" name="page_from" value="new_my_profile_document.jsp">
		<div class="content">
			<div class="profile_nav">
			<div class="profile_nav_personal">
				<strong><a href="new_my_profile_personal?page_from=new_my_profile.jsp&user_id=<%= user_id %>">Personal</a></strong>
			</div>
			<div class="profile_nav_official">
				<strong><a href="new_my_profile_official?page_from=new_my_profile_official.jsp">Official</a></strong>
			</div>
			<div class="profile_nav_history">
				<strong><a href="new_my_profile_disciplinary_history?page_from=new_my_profile_disciplinary_history.jsp">Disciplinary History</a></strong>
			</div>
			<div class="profile_nav_medical">
				<strong><a href="new_my_profile_demographic_and_medical?page_from=new_my_profile_demographic_and_medical.jsp">Demographic and Medical</a></strong>
			</div>
			<div class="profile_nav_document"  id="profile_nav_active">
				<strong><a href="new_my_profile_document?page_from=new_my_profile_document.jsp">Document</a></strong>
			</div>
			<div class="profile_nav_activity">
				<strong><a href="new_my_profile_activity_and_achievement?page_from=new_my_profile_activity_and_achievement.jsp">Activity &amp; Achievement</a></strong>
			</div>
			<div class="profile_nav_address">
				<strong><a href="new_my_profile_address?page_from=new_my_profile_address.jsp">Address</a></strong>
			</div>
			<div class="profile_nav_additional">
				<strong><a href="new_my_profile_additional_information?page_from=new_my_profile_additional_information.jsp">Additional Information</a></strong>
			</div>
			<div class="profile_nav_bank">
				<strong><a href="new_my_profile_bank_detail?page_from=new_my_profile_bank_detail.jsp">Bank Detail</a></strong>
			</div>
			<div class="profile_nav_family">
				<strong><a href="new_my_profile_family_details?page_from=new_my_profile_family_details.jsp">Family Details</a></strong>
			</div>
			<div class="profile_nav_other">
				<strong><a href="new_my_profile_other?page_from=new_my_profile_other.jsp">Other</a></strong>
			</div>
		</div>
		<div class="doc_sub">
			<strong>Document Submitted</strong>
		</div>
	</div>
	<div class="save_button">
		<input type="submit" name="save" value="SAVE" id="save">
	</div>
	</form>
	<%@ include file = "footer.jsp" %>
</body>
</html>