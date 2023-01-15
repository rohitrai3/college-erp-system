<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@ include file = "header.jsp" %>
    
<%
	String father_name=(String)request.getAttribute("father_name");
	String mother_name=(String)request.getAttribute("mother_name");
	long father_contact=(Long)request.getAttribute("father_contact");
	long mother_contact=(Long)request.getAttribute("mother_contact");
	String child_name=(String)request.getAttribute("child_name");
	int child_age=(Integer)request.getAttribute("child_age");
	String child_qualification=(String)request.getAttribute("child_qualification");
	String child_profession=(String)request.getAttribute("child_profession");
%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>My Profile - Family Details</title>
<link href="./css/my_profile_family_details.css" rel="stylesheet" type="text/css">
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
		<strong>Staff Information</strong>
	</div>
	<div class="employee_name">
		<strong>Employee Name : <%= session_name %></strong>
	</div>
	<form action="update_my_profile_family_details" method="post">
	<input type="hidden" name="page_from" value="my_profile_family_details.jsp">
	<div class="content">
		<div class="profile_nav">
			<div class="profile_nav_personal">
				<strong><a href="my_profile_personal?page_from=my_profile.jsp">Personal</a></strong>
			</div>
			<div class="profile_nav_official">
				<strong><a href="new_my_profile_official?page_from=my_profile_official.jsp">Official</a></strong>
			</div>
			<div class="profile_nav_history">
				<strong><a href="new_my_profile_disciplinary_history?page_from=my_profile_disciplinary_history.jsp">Disciplinary History</a></strong>
			</div>
			<div class="profile_nav_medical">
				<strong><a href="new_my_profile_demographic_and_medical?page_from=my_profile_demographic_and_medical.jsp">Demographic and Medical</a></strong>
			</div>
			<div class="profile_nav_document">
				<strong><a href="new_my_profile_document?page_from=my_profile_document.jsp">Document</a></strong>
			</div>
			<div class="profile_nav_activity">
				<strong><a href="new_my_profile_activity_and_achievement?page_from=my_profile_activity_and_achievement.jsp">Activity &amp; Achievement</a></strong>
			</div>
			<div class="profile_nav_address">
				<strong><a href="new_my_profile_address?page_from=my_profile_address.jsp">Address</a></strong>
			</div>
			<div class="profile_nav_additional">
				<strong><a href="new_my_profile_additional_information?page_from=my_profile_additional_information.jsp">Additional Information</a></strong>
			</div>
			<div class="profile_nav_bank">
				<strong><a href="new_my_profile_bank_detail?page_from=my_profile_bank_detail.jsp">Bank Detail</a></strong>
			</div>
			<div class="profile_nav_family" id="profile_nav_active">
				<strong><a href="new_my_profile_family_details?page_from=my_profile_family_details.jsp">Family Details</a></strong>
			</div>
			<div class="profile_nav_other">
				<strong><a href="new_my_profile_other?page_from=my_profile_other.jsp">Other</a></strong>
			</div>
		</div>
		<div class="family_info">
			<strong>Family Information</strong>
		</div>
		<div class="father_name">
			<strong>Father Name :</strong>
		</div>
		<div class="father_name_input">
			<input type="text" name="father_name" id="father_name" value="<%
				if(father_name!=null)
				{
					out.print(father_name);
				}
			%>">
		</div>
		<div class="mother_name">
			<strong>Mother Name :</strong>
		</div>
		<div class="mother_name_input">
			<input type="text" name="mother_name" id="mother_name" value="<%
				if(mother_name!=null)
				{
					out.print(mother_name);
				}
			%>">
		</div>
		<div class="father_contact">
			<strong>Contact No. :</strong>
		</div>
		<div class="father_contact_input">
			<input type="text" name="father_contact" id="father_contact" value="<%
				if(father_contact!=0)
				{
					out.print(father_contact);
				}
			%>">
		</div>
		<div class="mother_contact">
			<strong>Contact No. :</strong>
		</div>
		<div class="mother_contact_input">
			<input type="text" name="mother_contact" id="mother_contact" value="<%
				if(mother_contact!=0)
				{
					out.print(mother_contact);
				}
			%>">
		</div>
		<div class="children_info">
			<strong>Children Information</strong>
		</div>
		<div class="c_sr_no">
			<strong>Sr No.</strong>
		</div>
		<div class="c_name">
			<strong>Name</strong>
		</div>
	    <div class="c_age">
			<strong>Age</strong>
		</div>
	    <div class="c_qualification">
			<strong>Qualification</strong>
		</div>
	    <div class="c_profession">
			<strong>Profession</strong>
		</div>
	    <div class="c_delete">
			<strong>Delete</strong>
		</div>
		<div class="c_sr_no_value">
			<strong>1.</strong>
		</div>
		<div class="c_name_input">
			<input type="text" name="child_name" id="c_name" value="<%
				if(child_name!=null)
				{
					out.print(child_name);
				}
			%>">
		</div>
		<div class="c_age_input">
			<input type="text" name="child_age" id="c_age" value="<%
				if(child_age!=0)
				{
					out.print(child_age);
				}
			%>">
		</div>
		<div class="c_qualification_select">
			<select name="child_qualification" id="c_qualification">
				<option value="none"
				<% if(child_qualification==null)
						{
							out.print("selected");
						}
					%>
				>--Select Qualification--</option>
				<option value="matriculation"
				<% 	if(child_qualification!=null)
						{
							if(child_qualification.equals("matriculation"))
							{
								out.print("selected");
							}
						}
					%>
				>Matriculation</option>
				<option value="intermediate"
				<% 	if(child_qualification!=null)
						{
							if(child_qualification.equals("intermediate"))
							{
								out.print("selected");
							}
						}
					%>
				>Intermediate</option>
				<option value="ug"
				<% 	if(child_qualification!=null)
						{
							if(child_qualification.equals("ug"))
							{
								out.print("selected");
							}
						}
					%>
				>Under Graduate</option>
			</select>
		</div>
		<div class="c_profession_select">
			<select name="child_profession" id="c_profession">
				<option value="none"
				<% if(child_profession==null)
						{
							out.print("selected");
						}
					%>
				>--Select Profession--</option>
				<option value="student"
				<% 	if(child_profession!=null)
						{
							if(child_profession.equals("student"))
							{
								out.print("selected");
							}
						}
					%>
				>Student</option>
				<option value="job"
				<% 	if(child_profession!=null)
						{
							if(child_profession.equals("job"))
							{
								out.print("selected");
							}
						}
					%>
				>Job</option>
			</select>
		</div>
		<div class="c_delete_check">
			<input type="checkbox" name="child_delete" id="c_delete">
		</div>
		<div class="add_child">
			<button id="add_child">ADD CHILD</button>
		</div>
	</div>
	<div class="save_button">
		<input type="submit" name="save" value="SAVE" id="save">
	</div>
	</form>
	
	<%@ include file = "footer.jsp" %>
</body>
</html>