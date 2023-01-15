<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@ include file = "header.jsp" %>
    
<%
	int n_conference=(Integer)request.getAttribute("n_conference");
	int n_paper=(Integer)request.getAttribute("n_paper");
	int n_workshop=(Integer)request.getAttribute("n_workshop");
	String book_name=(String)request.getAttribute("book_name");
	int i_conference=(Integer)request.getAttribute("i_conference");
	int i_paper=(Integer)request.getAttribute("i_paper");
	int i_workshop=(Integer)request.getAttribute("i_workshop");
	int book_year=(Integer)request.getAttribute("book_year");
%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>My Profile - Other</title>
<link href="./css/my_profile_other.css" rel="stylesheet" type="text/css">
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
	<form action="update_my_profile_other" method="post">
	<input type="hidden" name="page_from" value="my_profile_other.jsp">
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
			<div class="profile_nav_family">
				<strong><a href="new_my_profile_family_details?page_from=my_profile_family_details.jsp">Family Details</a></strong>
			</div>
			<div class="profile_nav_other" id="profile_nav_active">
				<strong><a href="new_my_profile_other?page_from=my_profile_other.jsp">Other</a></strong>
			</div>
		</div>
		<div class="national">
			<strong>National</strong>
		</div>
		<div class="conf">
			<strong>Total No. of Conference(s) Attended :</strong>
		</div>
		<div class="conf_input">
			<input type="text" name="n_conference" id="conf" value="<%
				if(n_conference!=0)
				{
					out.print(n_conference);
				}
			%>">
		</div>
		<div class="paper">
			<strong>Total No. of Paper(s) Published :</strong>
		</div>
		<div class="paper_input">
			<input type="text" name="n_paper" id="paper" value="<%
				if(n_paper!=0)
				{
					out.print(n_paper);
				}
			%>">
		</div>
		<div class="work">
			<strong>Total No. of Workshop(s) Attended :</strong>
		</div>
		<div class="work_input">
			<input type="text" name="n_workshop" id="work" value="<%
				if(n_workshop!=0)
				{
					out.print(n_workshop);
				}
			%>">
		</div>
		<div class="book_name">
			<strong>Book Name</strong>
		</div>
		<div class="book">
			<strong>Book(s) Published :</strong>
		</div>
		<div class="book1_input">
			<input type="text" name="book_name" id="book1" value="<%
				if(book_name!=null)
				{
					out.print(book_name);
				}
			%>">
		</div>
		<div class="international">
			<strong>International</strong>
		</div>
		<div class="i_conf_input">
			<input type="text" name="i_conference" id="i_conf" value="<%
				if(i_conference!=0)
				{
					out.print(i_conference);
				}
			%>">
		</div>
		<div class="i_paper_input">
			<input type="text" name="i_paper" id="i_paper" value="<%
				if(i_paper!=0)
				{
					out.print(i_paper);
				}
			%>">
		</div>
		<div class="i_work_input">
			<input type="text" name="i_workshop" id="i_work" value="<%
				if(i_workshop!=0)
				{
					out.print(i_workshop);
				}
			%>">
		</div>
		<div class="year">
			<strong>Year</strong>
		</div>
		<div class="year1_input">
			<input type="text" name="book_year" id="year1" value="<%
				if(book_year!=0)
				{
					out.print(book_year);
				}
			%>">
		</div>
		<div class="add_more">
			<button id="add_child">ADD MORE...</button>
		</div>
	</div>
	<div class="save_button">
		<input type="submit" name="save" value="SAVE" id="save">
	</div>
	</form>
	
	<%@ include file = "footer.jsp" %>
</body>
</html>