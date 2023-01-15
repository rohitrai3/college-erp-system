<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@ include file = "header.jsp" %>
    
<%
	String first_check=(String)request.getAttribute("first_check");
	String second_check=(String)request.getAttribute("second_check");
	String third_check=(String)request.getAttribute("third_check");
	String fourth_check=(String)request.getAttribute("fourth_check");
	String fifth_check=(String)request.getAttribute("fifth_check");
	String remarks=(String)request.getAttribute("remarks");
%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>My Profile - Disciplinary History</title>
<link href="./css/my_profile_disciplinary_history.css" rel="stylesheet" type="text/css">
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
	<form action="update_my_profile_disciplinary_history" method="post">
	<input type="hidden" name="page_from" value="my_profile_disciplinary_history.jsp">
	<div class="content">
		<div class="profile_nav">
			<div class="profile_nav_personal">
				<strong><a href="my_profile_personal?page_from=my_profile.jsp">Personal</a></strong>
			</div>
			<div class="profile_nav_official">
				<strong><a href="new_my_profile_official?page_from=my_profile_official.jsp">Official</a></strong>
			</div>
			<div class="profile_nav_history" id="profile_nav_active">
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
		<div class="first_line">
			<strong>1. </strong>Have you ever been found responsible for a disciplinary violation at any organization you have withupto-now, whether related to behavioral misconduct or any other misconduct, which resulted in your probation, suspension, removal, dismissal, or explusion from the organization?
		</div>
		<div class="first_check">
			<input type="checkbox" name="first_check" value="yes" id="first_check"
			<% if(first_check!=null)
				{
					if(first_check.equals("yes"))
					{
						out.print("checked");
					}
				}
			%>>
		</div>
		<div class="second_line">
			<strong>2. </strong>Have you ever been convicted of a misdemeanor, felony, or other crime?
		</div>
		<div class="second_check">
			<input type="checkbox" name="second_check" value="yes" id="second_check"
			<% if(second_check!=null)
				{
					if(second_check.equals("yes"))
					{
						out.print("checked");
					}
				}
			%>>
		</div>
		<div class="third_line">
			<strong>3. </strong>Is any judicial proceeding pending or still going on against you?
		</div>
		<div class="third_check">
			<input type="checkbox" name="third_check" value="yes" id="third_check"
			<% if(third_check!=null)
				{
					if(third_check.equals("yes"))
					{
						out.print("checked");
					}
				}
			%>>
		</div>
		<div class="fourth_line">
			<strong>4. </strong>Have you ever been found guilty of any act of ragging or sexual abuse/ harassment?
		</div>
		<div class="fourth_check">
			<input type="checkbox" name="fourth_check" value="yes" id="fourth_check"
			<% if(fourth_check!=null)
				{
					if(fourth_check.equals("yes"))
					{
						out.print("checked");
					}
				}
			%>>
		</div>
		<div class="fifth_line">
			<strong>5. </strong>Have you ever filed for insolvency or bankruptcy?
		</div>
		<div class="fifth_check">
			<input type="checkbox" name="fifth_check" value="yes" id="fifth_check"
			<% if(fifth_check!=null)
				{
					if(fifth_check.equals("yes"))
					{
						out.print("checked");
					}
				}
			%>>
		</div>
		<div class="remarks">
			<strong>Remarks</strong>
		</div>
		<div class="remarks_input">
			<textarea name="remarks" id="remarks" cols="110" rows="6"><%
				if(remarks!=null)
				{
					out.print(remarks);
				}
			%></textarea>
		</div>
	</div>
	<div class="save_button">
		<input type="submit" name="save" value="SAVE" id="save">
	</div>
	</form>
	
	<%@ include file = "footer.jsp" %>
</body>
</html>