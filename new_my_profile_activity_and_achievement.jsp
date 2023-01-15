<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@ include file="admin_header.jsp" %>
    
<%
	String employee_name=(String)session.getAttribute("employee_name");
	String user_id=(String)session.getAttribute("employee_id");
	String sports=(String)request.getAttribute("sports");
	String musical=(String)request.getAttribute("musical");
	String cultural=(String)request.getAttribute("cultural");
	String hobbies=(String)request.getAttribute("hobbies");
	String first_check=(String)request.getAttribute("first_check");
	String second_check=(String)request.getAttribute("second_check");
	String third_check=(String)request.getAttribute("third_check");
	String fourth_check=(String)request.getAttribute("fourth_check");
	String fifth_check=(String)request.getAttribute("fifth_check");
	String sixth_check=(String)request.getAttribute("sixth_check");
%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>My Profile - Activity &amp; Achievement</title>
<link href="./css/new_my_profile_activity_and_achievement.css" rel="stylesheet" type="text/css">
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
	<form action="update_my_profile_activity_and_achievement" method="post">
	<input type="hidden" name="page_from" value="new_my_profile_activity_and_achievement.jsp">
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
			<div class="profile_nav_activity"  id="profile_nav_active">
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
		<div class="extra_curr">
			<strong>Extra Curricular</strong>
		</div>
		<div class="extra_curr_text1">
			<strong>Please list your principal extra-curricular, community, volunteer and hobbies in the order of their interest to you. Include specific events and/or major accomplishments such as musical instrument(s) played, varsity letters earned, etc. to allow us to focus on the highlights of your activities.</strong>
		</div>
		<div class="sports">
			My Favourite Sports :
		</div>
		<div class="sports_input">
			<input type="text" name="sports" id="sports"   value="<%
				if(sports!=null)
				{
					out.print(sports);
				}
			%>">
		</div>
		<div class="musical">
			Musical Instrument I play :
		</div>
		<div class="musical_input">
			<input type="text" name="musical" id="musical"  value="<%
				if(musical!=null)
				{
					out.print(musical);
				}
			%>">
		</div>
		<div class="cultural">
			My Cultural Activities :
		</div>
		<div class="cultural_input">
			<input type="text" name="cultural" id="cultural"  value="<%
				if(cultural!=null)
				{
					out.print(cultural);
				}
			%>">
		</div>
		<div class="hobbies">
			My Hobbies :
		</div>
		<div class="hobbies_input">
			<input type="text" name="hobbies" id="hobbies"  value="<%
				if(hobbies!=null)
				{
					out.print(hobbies);
				}
			%>">
		</div>
		<div class="achievement">
			<strong>My Achievement</strong>
		</div>
		<div class="achievement_text1">
			I have represented my school/college/institution in sports/cultural/other activity at :
		</div>
		<div class="option1">
			<strong>1. </strong>Inter School
		</div>
		<div class="check1">
			<input type="checkbox" name="first_check" value="yes" id="check1"
			<% if(first_check!=null)
				{
					if(first_check.equals("yes"))
					{
						out.print("checked");
					}
				}
			%>
			>
		</div>
		<div class="option2">
			<strong>2. </strong>Inter University
		</div>
		<div class="check2">
			<input type="checkbox" name="second_check" value="yes" id="check2"
			<% if(second_check!=null)
				{
					if(second_check.equals("yes"))
					{
						out.print("checked");
					}
				}
			%>
			>
		</div>
		<div class="option3">
			<strong>3. </strong>District Level
		</div>
		<div class="check3">
			<input type="checkbox" name="third_check" value="yes" id="check3"
			<% if(third_check!=null)
				{
					if(third_check.equals("yes"))
					{
						out.print("checked");
					}
				}
			%>
			>
		</div>
		<div class="option4">
			<strong>4. </strong>State Level
		</div>
		<div class="check4">
			<input type="checkbox" name="fourth_check" value="yes" id="check4"
			<% if(fourth_check!=null)
				{
					if(fourth_check.equals("yes"))
					{
						out.print("checked");
					}
				}
			%>
			>
		</div>
		<div class="option5">
			<strong>5. </strong>National Level
		</div>
		<div class="check5">
			<input type="checkbox" name="fifth_check" value="yes" id="check5"
			<% if(fifth_check!=null)
				{
					if(fifth_check.equals("yes"))
					{
						out.print("checked");
					}
				}
			%>
			>
		</div>
		<div class="option6">
			<strong>6. </strong>Inter-Natonal Level
		</div>
		<div class="check6">
			<input type="checkbox" name="sixth_check" value="yes" id="check6"
			<% if(sixth_check!=null)
				{
					if(sixth_check.equals("yes"))
					{
						out.print("checked");
					}
				}
			%>
			>
		</div>
	</div>
	<div class="save_button">
		<input type="submit" name="save" value="SAVE" id="save">
	</div>
	</form>
	<%@ include file = "footer.jsp" %>
</body>
</html>