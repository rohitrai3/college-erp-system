<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@ include file="admin_header.jsp" %>
    
<%
	String employee_name=(String)session.getAttribute("employee_name");
	String user_id=(String)session.getAttribute("employee_id");
	String pan_no=(String)request.getAttribute("pan_no");
	int aadhar_no=(Integer)request.getAttribute("aadhar_no");
	String election_no=(String)request.getAttribute("election_no");
	String passport_no=(String)request.getAttribute("passport_no");
%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>My Profile - Additional Information</title>
<link href="./css/new_my_profile_additional_information.css" rel="stylesheet" type="text/css">
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
	<form action="update_my_profile_additional_information" method="post">
	<input type="hidden" name="page_from" value="new_my_profile_additional_information.jsp">
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
			<div class="profile_nav_document">
				<strong><a href="new_my_profile_document?page_from=new_my_profile_document.jsp">Document</a></strong>
			</div>
			<div class="profile_nav_activity">
				<strong><a href="new_my_profile_activity_and_achievement?page_from=new_my_profile_activity_and_achievement.jsp">Activity &amp; Achievement</a></strong>
			</div>
			<div class="profile_nav_address">
				<strong><a href="new_my_profile_address?page_from=new_my_profile_address.jsp">Address</a></strong>
			</div>
			<div class="profile_nav_additional"  id="profile_nav_active">
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
		<div class="add_info">
			<strong>Additional Information</strong>
		</div>
		<div class="pan_no">
			<strong>PAN No. :</strong>
		</div>
		<div class="pan_no_input">
			<input type="text" name="pan_no" id="pan_no"   value="<%
				if(pan_no!=null)
				{
					out.print(pan_no);
				}
			%>">
		</div>
		<div class="aadhar_no">
			<strong>Aadhar Card No. :</strong>
		</div>
		<div class="aadhar_no_input">
			<input type="text" name="aadhar_no" id="aadhar_no"   value="<%
				if(aadhar_no!=0)
				{
					out.print(aadhar_no);
				}
			%>">
		</div>
		<div class="election_no">
			<strong>Election Card No. :</strong>
		</div>
		<div class="election_no_input">
			<input type="text" name="election_no" id="election_no"   value="<%
				if(election_no!=null)
				{
					out.print(election_no);
				}
			%>">
		</div>
		<div class="passport_no">
			<strong>Passport No. :</strong>
		</div>
		<div class="passport_no_input">
			<input type="text" name="passport_no" id="passport_no"   value="<%
				if(passport_no!=null)
				{
					out.print(passport_no);
				}
			%>">
		</div>
	</div>
	<div class="save_button">
		<input type="submit" name="save" value="SAVE" id="save">
	</div>
	</form>
	<%@ include file = "footer.jsp" %>
</body>
</html>