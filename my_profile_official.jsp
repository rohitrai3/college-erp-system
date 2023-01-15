<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@ include file = "header.jsp" %>
    
<%
	String employment_code=(String)request.getAttribute("employment_code");
	String organization=(String)request.getAttribute("organization");
	String login_id=(String)request.getAttribute("login_id");
	String designation=(String)request.getAttribute("designation");
	int biometric_code=(Integer)request.getAttribute("biometric_code");
	String specialization=(String)request.getAttribute("specialization");
	String confirmation_date=(String)request.getAttribute("confirmation_date");
	String emp_group=(String)request.getAttribute("emp_group");
	String employee_type=(String)request.getAttribute("employee_type");
	int employee_id=(Integer)request.getAttribute("employee_id");
	String joining_date=(String)request.getAttribute("joining_date");
	String reporting_authority=(String)request.getAttribute("reporting_authority");
	String staff_type=(String)request.getAttribute("staff_type");
	int sequence_no=(Integer)request.getAttribute("sequence_no");
	String department=(String)request.getAttribute("department");
	String hod=(String)request.getAttribute("hod");
%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>My Profile - Official</title>
<link href="./css/my_profile_official.css" rel="stylesheet" type="text/css">
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
	<form action="update_my_profile_official" method="post">
	<input type="hidden" name="page_from" value="my_profile_official.jsp">
	<div class="content">
		<div class="profile_nav">
			<div class="profile_nav_personal">
				<strong><a href="my_profile_personal?page_from=my_profile.jsp">Personal</a></strong>
			</div>
			<div class="profile_nav_official" id="profile_nav_active">
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
			<div class="profile_nav_family">
				<strong><a href="new_my_profile_family_details?page_from=my_profile_family_details.jsp">Family Details</a></strong>
			</div>
			<div class="profile_nav_other">
				<strong><a href="new_my_profile_other?page_from=my_profile_other.jsp">Other</a></strong>
			</div>
		</div>
		<div class="employment_code">
				<strong>Previous Employment Code :</strong>
			</div>
			<div class="employment_code_select">
				<select name="employment_code" id="employment_code_select">
					<option value="none"
					<% if(employment_code==null)
						{
							out.print("selected");
						}
					%>
					>--Select Code/Name--</option>
					<option value="101"
					<% 	if(employment_code!=null)
						{
							if(employment_code.equals("101"))
							{
								out.print("selected");
							}
						}
					%>
					>101</option>
					<option value="102"
					<% 	if(employment_code!=null)
						{
							if(employment_code.equals("102"))
							{
								out.print("selected");
							}
						}
					%>
					>102</option>
					<option value="103"
					<% 	if(employment_code!=null)
						{
							if(employment_code.equals("103"))
							{
								out.print("selected");
							}
						}
					%>
					>103</option>
				</select>
			</div>
			<div class="base">
				<strong>Base Organization :</strong>
			</div>
			<div class="base_select">
				<select name="organization" id="base">
					<option value="none"
					<% if(organization==null)
						{
							out.print("selected");
						}
					%>
					>--Select Organization--</option>
					<option value="bsaitm"
					<% 	if(organization!=null)
						{
							if(organization.equals("bsaitm"))
							{
								out.print("selected");
							}
						}
					%>
					>B. S. Anangpuria Institute Of Technology And Management</option>
					<option value="bsail"
					<% 	if(organization!=null)
						{
							if(organization.equals("bsail"))
							{
								out.print("selected");
							}
						}
					%>
					>B. S. Anangpuria Institute Of Law</option>
					<option value="bsaip"
					<% 	if(organization!=null)
						{
							if(organization.equals("bsaip"))
							{
								out.print("selected");
							}
						}
					%>
					>B. S. Anangpuria Institute Of Pharmacy</option>
				</select>
			</div>
			<div class="username">
				<strong>Login User Name :</strong>
			</div>
			<div class="username_input">
				<input type="text" name="login_id" id="username" value="<%
					if(login_id!=null)
					{
						out.print(login_id);
					}
				%>" readonly>
			</div>
			<div class="designation">
				<strong>Designation :</strong>
			</div>
			<div class="designation_select">
				<select name="designation" id="designation">
					<option value="none"
					<% if(designation==null)
						{
							out.print("selected");
						}
					%>
					>--Select Designation--</option>
					<option value="Professor"
					<% 	if(designation!=null)
						{
							if(designation.equals("Professor"))
							{
								out.print("selected");
							}
						}
					%>
					>Professor</option>
					<option value="Associate_Professor"
					<% 	if(designation!=null)
						{
							if(designation.equals("Associate_Professor"))
							{
								out.print("selected");
							}
						}
					%>
					>Associate Professor</option>
					<option value="Assistant_Professor"
					<% 	if(designation!=null)
						{
							if(designation.equals("Assistant_Professor"))
							{
								out.print("selected");
							}
						}
					%>
					>Assistant Professor</option>
				</select>
			</div>
			<div class="biometric">
				<strong>Bio-Metric Code :</strong>
			</div>
			<div class="biometric_input">
				<input type="text" name="biometric_code" id="biometric" value="<%
					if(biometric_code!=0)
					{
						out.print(biometric_code);
					}
				%>">
			</div>
			<div class="specialization">
				<strong>Specialization :</strong>
			</div>
			<div class="specialization_input">
				<input type="text" name="specialization" id="specialization" value="<%
					if(specialization!=null)
					{
						out.print(specialization);
					}
				%>">
			</div>
			<div class="confirm">
				<strong>Confirmation Date :</strong>
			</div>
			<div class="confirm_input">
				<input type="date" name="confirmation_date" id="confirm" value="<%
					if(confirmation_date!=null)
					{
						out.print(confirmation_date);
					}
				%>">
			</div>
			<div class="group">
				<strong>Emp. Group :</strong>
			</div>
			<div class="group_select">
				<select name="emp_group" id="group">
					<option value="none"
					<% if(emp_group==null)
						{
							out.print("selected");
						}
					%>
					>--Select Group--</option>
					<option value="1"
					<% 	if(emp_group!=null)
						{
							if(emp_group.equals("1"))
							{
								out.print("selected");
							}
						}
					%>
					>1</option>
					<option value="2"
					<% 	if(emp_group!=null)
						{
							if(emp_group.equals("2"))
							{
								out.print("selected");
							}
						}
					%>
					>2</option>
					<option value="3"
					<% 	if(emp_group!=null)
						{
							if(emp_group.equals("3"))
							{
								out.print("selected");
							}
						}
					%>
					>3</option>
				</select>
			</div>
			<div class="type">
				<strong>Employee Type :</strong>
			</div>
			<div class="type_select">
				<select name="employee_type" id="type">
					<option value="none"
					<% if(employee_type==null)
						{
							out.print("selected");
						}
					%>
					>--Select Type--</option>
					<option value="Teaching"
					<% 	if(employee_type!=null)
						{
							if(employee_type.equals("Teaching"))
							{
								out.print("selected");
							}
						}
					%>
					>Teaching</option>
					<option value="Lab_Attendant"
					<% 	if(employee_type!=null)
						{
							if(employee_type.equals("Lab_Attendant"))
							{
								out.print("selected");
							}
						}
					%>
					>Lab Attendant</option>
					<option value="Trainee"
					<% 	if(employee_type!=null)
						{
							if(employee_type.equals("Trainee"))
							{
								out.print("selected");
							}
						}
					%>
					>Trainee</option>
				</select>
			</div>
			<div class="id">
				<strong>Employee ID :</strong>
			</div>
			<div class="id_input">
				<input type="text" name="employee_id" id="id" value="<%
					if(employee_id!=0)
					{
						out.print(employee_id);
					}
				%>">
			</div>
			<div class="joining">
				<strong>Joining Date :</strong>
			</div>
			<div class="joining_input">
				<input type="date" name="joining_date" id="joining" value="<%
					if(joining_date!=null)
					{
						out.print(joining_date);
					}
				%>">
			</div>
			<div class="reporting">
				<strong>Reporting Authority :</strong>
			</div>
			<div class="reporting_select">
				<select name="reporting_authority" id="reporting">
					<option value="none"
					<% if(reporting_authority==null)
						{
							out.print("selected");
						}
					%>
					>--Select Authority--</option>
					<option value="Ms. Ranjana Jain"
					<% 	if(reporting_authority!=null)
						{
							if(reporting_authority.equals("Ms. Ranjana Jain"))
							{
								out.print("selected");
							}
						}
					%>
					>Ms. Ranjna Jain</option>
					<option value="Prof. Dr. Roop Krishen Khar"
					<% 	if(reporting_authority!=null)
						{
							if(reporting_authority.equals("Prof. Dr. Roop Krishen Khar"))
							{
								out.print("selected");
							}
						}
					%>
					>Prof. Dr. Roop Krishen Khar</option>
					<option value="Prof. Dr. Dinesh Kumeri"
					<% 	if(reporting_authority!=null)
						{
							if(reporting_authority.equals("Prof. Dr. Dinesh Kumeri"))
							{
								out.print("selected");
							}
						}
					%>
					>Prof. Dr. Dinesh Kumeri</option>
				</select>
			</div>
			<div class="staff_type">
				<strong>Staff Type :</strong>
			</div>
			<div class="staff_type_select">
				<select name="staff_type" id="staff_select">
					<option value="none"
					<% if(staff_type==null)
						{
							out.print("selected");
						}
					%>
					>--Select Type--</option>
					<option value="Permanent"
					<% 	if(staff_type!=null)
						{
							if(staff_type.equals("Permanent"))
							{
								out.print("selected");
							}
						}
					%>
					>Permanent</option>
					<option value="Temporary"
					<% 	if(staff_type!=null)
						{
							if(staff_type.equals("Temporary"))
							{
								out.print("selected");
							}
						}
					%>
					>Temporary</option>
				</select>
			</div>
			<div class="sequence">
				<strong>Sequence No. :</strong>
			</div>
			<div class="sequence_input">
				<input type="text" name="sequence_no" id="sequence" value="<%
					if(sequence_no!=0)
					{
						out.print(sequence_no);
					}
				%>">
			</div>
			<div class="department">
				<strong>Department :</strong>
			</div>
			<div class="department_select">
				<select name="department" id="department">
					<option value="none"
					<% if(department==null)
						{
							out.print("selected");
						}
					%>
					>--Select Department--</option>
					<option value="CE"
					<% 	if(department!=null)
						{
							if(department.equals("CE"))
							{
								out.print("selected");
							}
						}
					%>
					>Department of Civil Engineering</option>
					<option value="ECE"
					<% 	if(department!=null)
						{
							if(department.equals("ECE"))
							{
								out.print("selected");
							}
						}
					%>
					>Department of Electronics and Communication Engineering</option>
					<option value="ME"
					<% 	if(department!=null)
						{
							if(department.equals("ME"))
							{
								out.print("selected");
							}
						}
					%>
					>Department of Mechanical Engineering</option>
					<option value="IT"
					<% 	if(department!=null)
						{
							if(department.equals("IT"))
							{
								out.print("selected");
							}
						}
					%>
					>Department of Information Technology</option>
					<option value="CSE"
					<% 	if(department!=null)
						{
							if(department.equals("CSE"))
							{
								out.print("selected");
							}
						}
					%>
					>Department of Computer Science Engineering</option>
				</select>
			</div>
			<div class="hod">
				<strong>HOD of :</strong>
			</div>
			<div class="hod_input">
				<input type="text" name="hod" id="hod" value="<%
					if(hod!=null)
					{
						out.print(hod);
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