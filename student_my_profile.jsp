<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@ include file="student_header.jsp" %>

<%  
	String user_id=(String)request.getAttribute("official_id");
	String user_pic=(String)request.getAttribute("profile_logo");
	String current_session=(String)request.getAttribute("current_session");
	String organization=(String)request.getAttribute("organization");
	String department=(String)request.getAttribute("department");
	String course=(String)request.getAttribute("course");
	String sem=(String)request.getAttribute("sem");
	String section=(String)request.getAttribute("section");
	String name=(String)request.getAttribute("name");
	String rollno=(String)request.getAttribute("rollno");
	String dob=(String)request.getAttribute("dob");
	String blood=(String)request.getAttribute("blood");
	String gender=(String)request.getAttribute("gender");
	String admission=(String)request.getAttribute("admission");
	long mobile=(Long)request.getAttribute("mobile");
	String category=(String)request.getAttribute("category");
	String nation=(String)request.getAttribute("nation");
	String address=(String)request.getAttribute("address");
	String city=(String)request.getAttribute("city");
	String state=(String)request.getAttribute("state");
	String country=(String)request.getAttribute("country");
	int pin=(Integer)request.getAttribute("pin");
	String f_pic=(String)request.getAttribute("f_pic");
	String f_salutation=(String)request.getAttribute("f_salutation");
	String f_name=(String)request.getAttribute("f_name");
	long f_mobile=(Long)request.getAttribute("f_mobile");
	String f_email=(String)request.getAttribute("f_email");
	String m_pic=(String)request.getAttribute("m_pic");
	String m_salutation=(String)request.getAttribute("m_salutation");
	String m_name=(String)request.getAttribute("m_name");
	long m_mobile=(Long)request.getAttribute("m_mobile");
	String m_email=(String)request.getAttribute("m_email");
%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Administrator My Profile</title>
<link href="./css/student_my_profile.css" rel="stylesheet" type="text/css">
</head>

<body>
	<div class="content">
		
	</div>
	<div class="my_profile">
		<strong>My Profile</strong>
	</div>
	<div class="personal_info">
		Personal Information
	</div>
	<div class="my_photo">
		My Photo :
	</div>
	<div class="profile_logo">
		<img src="./images/user/<%= user_pic %>" alt="<%= user_pic %>" id="profile_logo">
	</div>
	<div class="session">
		Session :
	</div>
	<div class="session_value">
		<%= current_session %>
	</div>
	<div class="department">
		Department :
	</div>
	<div class="department_value">
		<%= department %>
	</div>
	<div class="sem">
		Sem./Year :
	</div>
	<div class="sem_value">
		<%= sem %>
	</div>
	<div class="name">
		Name: 
	</div>
	<div class="name_value">
		<%= name %>
	</div>
	<div class="rollno">
		College Roll No. :
	</div>
	<div class="rollno_value">
		<%= rollno %>
	</div>
	<div class="blood">
		Blood Group :
	</div>
	<div class="blood_value">
		<%= blood %>
	</div>
	<div class="admission">
		Date of Admission :
	</div>
	<div class="admission_value">
		<%= admission %>
	</div>
	<div class="organisation">
		Organzation :
	</div>
	<div class="organisation_value">
		<%= organization %>
	</div>
	<div class="course">
		Course/Branch :
	</div>
	<div class="course_value">
		<%= course %>
	</div>
	<div class="section">
		Section :
	</div>
	<div class="section_value">
		<%= section %>
	</div>
	<div class="email">
		Email ID :
	</div>
	<div class="email_value">
		<%= user_id %>
	</div>
	<div class="dob">
		Date of Birth :
	</div>
	<div class="dob_value">
		<%= dob %>
	</div>
	<div class="gender">
		Gender :
	</div>
	<div class="gender_value">
		<%= gender %>
	</div>
	<div class="mobile">
		Mobile No. :
	</div>
	<div class="mobile_value">
		<%= mobile %>
	</div>
	<div class="category">
		Category :
	</div>
	<div class="category_value">
		<%= category %>
	</div>
	<div class="nation">
		Nationality :
	</div>
	<div class="nation_value">
		<%= nation %>
	</div>
	<div class="address_info">
		Address Information
	</div>
	<div class="address">
		Address :
	</div>
	<div class="address_value">
		<%= address %>
	</div>
	<div class="city">
		City :
	</div>
	<div class="city_value">
		<%= city %>
	</div>
	<div class="country">
		Country :
	</div>
	<div class="country_value">
		<%= country %>
	</div>
	<div class="state">
		State :
	</div>
	<div class="state_value">
		<%= state %>
	</div>
	<div class="pin">
		Pin :
	</div>
	<div class="pin_value">
		<%= pin %>
	</div>
	<div class="father_info">
		Father Information
	</div>
	<div class="f_photo">
		Photo :
	</div>
	<div class="f_pic">
		<img src="./images/user/<%= f_pic %>" alt="<%= f_pic %>" id="f_pic">
	</div>
	<div class="f_salutation">
		Salutation :
	</div>
	<div class="f_salutation_value">
		<%= f_salutation %>
	</div>
	<div class="f_mobile">
		Mobile No. :
	</div>
	<div class="f_mobile_value">
		<%= f_mobile %>
	</div>
	<div class="f_name">
		Name :
	</div>
	<div class="f_name_value">
		<%= f_name %>
	</div>
	<div class="f_email">
		Email ID :
	</div>
	<div class="f_email_value">
		<%= f_email %>
	</div>
	<div class="mother_info">
		Mother Information
	</div>
	<div class="m_photo">
		Photo :
	</div>
	<div class="m_pic">
		<img src="./images/user/<%= m_pic %>" alt="<%= m_pic %>" id="m_pic">
	</div>
	<div class="m_salutation">
		Salutation :
	</div>
	<div class="m_salutation_value">
		<%= m_salutation %>
	</div>
	<div class="m_mobile">
		Mobile No. :
	</div>
	<div class="m_mobile_value">
		<%= m_mobile %>
	</div>
	<div class="m_name">
		Name :
	</div>
	<div class="m_name_value">
		<%= m_name %>
	</div>
	<div class="m_email">
		Email ID :
	</div>
	<div class="m_email_value">
		<%= m_email %>
	</div>
	<%@ include file="footer.jsp" %>
</body>
</html>