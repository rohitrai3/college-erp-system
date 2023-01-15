<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@ include file="admin_header.jsp" %>

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
<title>Administrator - Edit Student Details</title>
<link href="./css/edit_student_details.css" rel="stylesheet" type="text/css">
</head>
<body>
	<form action="update_student_details?from=admin" method="post">
	<div class="content">
		
	</div>
	<div class="my_profile">
		<strong>Edit Profile</strong>
	</div>
	<div class="personal_info">
		Personal Information
	</div>
	<div class="my_photo">
		My Photo :
	</div>
	<div class="student_profile_pic" onclick="studentUploadShow()">
		<img src="./images/user/<%= user_pic %>" alt="<%= user_pic %>" id="student_profile_pic">
	</div>
	<div class="session">
		Session :
	</div>
	<div class="session_value">
		<select name="current_session" id="session">
			<option value="none"
			<% if(current_session==null)
				{
					out.print("selected");
				}
			%>
			>--Select Session--</option>
			<option value="2018-19"
			<% 	if(current_session!=null)
				{
					if(current_session.equals("2018-19"))
					{
						out.print("selected");
					}
				}
			%>
			>2018-19</option>
			<option value="2017-18"
			<% 	if(current_session!=null)
				{
					if(current_session.equals("2017-18"))
					{
						out.print("selected");
					}
				}
			%>
			>2017-18</option>
			<option value="2016-17"
			<% 	if(current_session!=null)
				{
					if(current_session.equals("2016-17"))
					{
						out.print("selected");
					}
				}
			%>
			>2016-17</option>
		</select>
	</div>
	<div class="department">
		Department :
	</div>
	<div class="department_value">
		<select name="department" id="department">
			<option value="none"
			<% if(department==null)
				{
					out.print("selected");
				}
			%>
			>--Select Department--</option>
			<option value="B.TECH"
			<% 	if(department!=null)
				{
					if(department.equals("B.TECH"))
					{
						out.print("selected");
					}
				}
			%>
			>B.TECH</option>
			<option value="M.TECH"
			<% 	if(department!=null)
				{
					if(department.equals("M.TECH"))
					{
						out.print("selected");
					}
				}
			%>
			>M.TECH</option>
			<option value="BCA"
			<% 	if(department!=null)
				{
					if(department.equals("BCA"))
					{
						out.print("selected");
					}
				}
			%>
			>BCA</option>
		</select>
	</div>
	<div class="sem">
		Sem./Year :
	</div>
	<div class="sem_value">
		<select name="sem" id="sem">
			<option value="none"
			<% if(sem==null)
				{
					out.print("selected");
				}
			%>
			>--Select Sem./Year--</option>
			<option value="VIII"
			<% 	if(sem!=null)
				{
					if(sem.equals("VIII"))
					{
						out.print("selected");
					}
				}
			%>
			>VIII</option>
			<option value="VII"
			<% 	if(sem!=null)
				{
					if(sem.equals("VII"))
					{
						out.print("selected");
					}
				}
			%>
			>VII</option>
			<option value="VI"
			<% 	if(sem!=null)
				{
					if(sem.equals("VI"))
					{
						out.print("selected");
					}
				}
			%>
			>VI</option>
		</select>
	</div>
	<div class="name">
		Name: 
	</div>
	<div class="name_value">
		<input type="text" name="name" id="name" value="<%
				if(name!=null)
				{
					out.print(name);
				}
			%>">
	</div>
	<div class="rollno">
		College Roll No. :
	</div>
	<div class="rollno_value">
		<input type="text" name="rollno" id="rollno" value="<%
				if(rollno!=null)
				{
					out.print(rollno);
				}
			%>">
	</div>
	<div class="blood">
		Blood Group :
	</div>
	<div class="blood_value">
		<select name="blood" id="blood">
			<option value="none"
			<% if(blood==null)
				{
					out.print("selected");
				}
			%>
			>--Select Blood Group--</option>
			<option value="A"
			<% 	if(blood!=null)
				{
					if(blood.equals("A"))
					{
						out.print("selected");
					}
				}
			%>
			>A</option>
			<option value="B"
			<% 	if(blood!=null)
				{
					if(blood.equals("B"))
					{
						out.print("selected");
					}
				}
			%>
			>B</option>
			<option value="O"
			<% 	if(blood!=null)
				{
					if(blood.equals("O"))
					{
						out.print("selected");
					}
				}
			%>
			>O</option>
		</select>
	</div>
	<div class="admission">
		Date of Admission :
	</div>
	<div class="admission_value">
		<input type="date" name="admission" id="admission" value="<%
				if(admission!=null)
				{
					out.print(admission);
				}
			%>">
	</div>
	<div class="organisation">
		Organzation :
	</div>
	<div class="organisation_value">
		<select name="organization" id="organisation">
			<option value="none"
			<% if(organization==null)
				{
					out.print("selected");
				}
			%>
			>--Select Organisation--</option>
			<option value="B. S. Anangpuria Institute of Technology and Management"
			<% 	if(organization!=null)
				{
					if(organization.equals("B. S. Anangpuria Institute of Technology and Management"))
					{
						out.print("selected");
					}
				}
			%>
			>B. S. Anangpuria Institute of Technology and Management</option>
			<option value="B. S. Anangpuria Institute of Law"
			<% 	if(organization!=null)
				{
					if(organization.equals("B. S. Anangpuria Institute of Law"))
					{
						out.print("selected");
					}
				}
			%>
			>B. S. Anangpuria Institute of Law</option>
			<option value="B. S. Anangpuria Institute of Pharmacy"
			<% 	if(organization!=null)
				{
					if(organization.equals("B. S. Anangpuria Institute of Pharmacy"))
					{
						out.print("selected");
					}
				}
			%>
			>B. S. Anangpuria Institute of Pharmacy</option>
		</select>
	</div>
	<div class="course">
		Course/Branch :
	</div>
	<div class="course_value">
		<select name="course" id="course">
			<option value="none"
			<% if(course==null)
				{
					out.print("selected");
				}
			%>
			>--Select Course/Branch--</option>
			<option value="B.Tech-Information Technology"
			<% 	if(course!=null)
				{
					if(course.equals("B.Tech-Information Technology"))
					{
						out.print("selected");
					}
				}
			%>
			>B.Tech-Information Technology</option>
			<option value="B.Tech-Computer Science"
			<% 	if(course!=null)
				{
					if(course.equals("B.Tech-Computer Science"))
					{
						out.print("selected");
					}
				}
			%>
			>B.Tech-Computer Science</option>
			<option value="B.Tech-Electronics and Communication"
			<% 	if(course!=null)
				{
					if(course.equals("B.Tech-Electronics and Communication"))
					{
						out.print("selected");
					}
				}
			%>
			>B.Tech-Electronics and Communication</option>
		</select>
	</div>
	<div class="section">
		Section :
	</div>
	<div class="section_value">
		<select name="section" id="section">
			<option value="none"
			<% if(section==null)
				{
					out.print("selected");
				}
			%>
			>--Select Section--</option>
			<option value="A"
			<% 	if(section!=null)
				{
					if(section.equals("A"))
					{
						out.print("selected");
					}
				}
			%>
			>A</option>
			<option value="B"
			<% 	if(section!=null)
				{
					if(section.equals("B"))
					{
						out.print("selected");
					}
				}
			%>
			>B</option>
			<option value="C"
			<% 	if(section!=null)
				{
					if(section.equals("C"))
					{
						out.print("selected");
					}
				}
			%>
			>C</option>
		</select>
	</div>
	<div class="email">
		Email ID :
	</div>
	<div class="email_value">
		<input type="email" name="user_id" id="email" value="<%
				if(user_id!=null)
				{
					out.print(user_id);
				}
			%>">
	</div>
	<div class="dob">
		Date of Birth :
	</div>
	<div class="dob_value">
		<input type="date" name="dob" id="dob" value="<%
				if(dob!=null)
				{
					out.print(dob);
				}
			%>">
	</div>
	<div class="gender">
		Gender :
	</div>
	<div class="gender_value">
		<select name="gender" id="gender">
			<option value="none"
			<% if(gender==null)
				{
					out.print("selected");
				}
			%>
			>--Select Gender--</option>
			<option value="Male"
			<% 	if(gender!=null)
				{
					if(gender.equals("Male"))
					{
						out.print("selected");
					}
				}
			%>
			>Male</option>
			<option value="Female"
			<% 	if(gender!=null)
				{
					if(gender.equals("Female"))
					{
						out.print("selected");
					}
				}
			%>
			>Female</option>
			<option value="Other"
			<% 	if(gender!=null)
				{
					if(gender.equals("Other"))
					{
						out.print("selected");
					}
				}
			%>
			>Other</option>
		</select>
	</div>
	<div class="mobile">
		Mobile No. :
	</div>
	<div class="mobile_value">
		<input type="text" name="mobile" id="mobile" value="<%
				if(mobile!=0)
				{
					out.print(mobile);
				}
			%>">
	</div>
	<div class="category">
		Category :
	</div>
	<div class="category_value">
		<select name="category" id="category">
			<option value="none"
			<% if(category==null)
				{
					out.print("selected");
				}
			%>
			>--Select Category--</option>
			<option value="GENERAL"
			<% 	if(category!=null)
				{
					if(category.equals("GENERAL"))
					{
						out.print("selected");
					}
				}
			%>
			>GENERAL</option>
			<option value="OBC"
			<% 	if(category!=null)
				{
					if(category.equals("OBC"))
					{
						out.print("selected");
					}
				}
			%>
			>OBC</option>
			<option value="SC/ST"
			<% 	if(category!=null)
				{
					if(category.equals("SC/ST"))
					{
						out.print("selected");
					}
				}
			%>
			>SC/ST</option>
		</select>
	</div>
	<div class="nation">
		Nationality :
	</div>
	<div class="nation_value">
		<input type="text" name="nation" id="nation" value="<%
				if(nation!=null)
				{
					out.print(nation);
				}
			%>">
	</div>
	<div class="address_info">
		Address Information
	</div>
	<div class="address">
		Address :
	</div>
	<div class="address_value">
		<input type="text" name="address" id="address" value="<%
				if(address!=null)
				{
					out.print(address);
				}
			%>">
	</div>
	<div class="city">
		City :
	</div>
	<div class="city_value">
		<select name="city" id="city">
			<option value="none"
			<% if(city==null)
				{
					out.print("selected");
				}
			%>
			>--Select City--</option>
			<option value="FARIDABAD"
			<% 	if(city!=null)
				{
					if(city.equals("FARIDABAD"))
					{
							out.print("selected");
					}
				}
			%>
			>FARIDABAD</option>
			<option value="GURUGRAM"
			<% 	if(city!=null)
				{
					if(city.equals("GURUGRAM"))
					{
							out.print("selected");
					}
				}
			%>
			>GURUGRAM</option>
			<option value="NOIDA"
			<% 	if(city!=null)
				{
					if(city.equals("NOIDA"))
					{
							out.print("selected");
					}
				}
			%>
			>NOIDA</option>
		</select>
	</div>
	<div class="country">
		Country :
	</div>
	<div class="country_value">
		<select name="country" id="country">
			<option value="none"
			<% if(country==null)
				{
					out.print("selected");
				}
			%>
			>--Select Country--</option>
			<option value="INDIA"
			<% 	if(country!=null)
				{
					if(country.equals("INDIA"))
					{
						out.print("selected");
					}
				}
			%>
			>INDIA</option>
			<option value="JAPAN"
			<% 	if(country!=null)
				{
					if(country.equals("JAPAN"))
					{
						out.print("selected");
					}
				}
			%>
			>JAPAN</option>
			<option value="GERMANY"
			<% 	if(country!=null)
				{
					if(country.equals("GERMANY"))
					{
						out.print("selected");
					}
				}
			%>
			>GERMANY</option>
		</select>
	</div>
	<div class="state">
		State :
	</div>
	<div class="state_value">
		<select name="state" id="state">
			<option value="none"
			<% if(state==null)
				{
					out.print("selected");
				}
			%>
			>--Select State--</option>
			<option value="HARYANA"
			<% 	if(state!=null)
				{
					if(state.equals("HARYANA"))
					{
						out.print("selected");
					}
				}
			%>
			>HARYANA</option>
			<option value="TOKYO"
			<% 	if(state!=null)
				{
					if(state.equals("TOKYO"))
					{
						out.print("selected");
					}
				}
			%>
			>TOKYA</option>
			<option value="DELHI"
			<% 	if(state!=null)
				{
					if(state.equals("DELHI"))
					{
						out.print("selected");
					}
				}
			%>
			>DELHI</option>
		</select>
	</div>
	<div class="pin">
		Pin :
	</div>
	<div class="pin_value">
		<input type="text" name="pin" id="pin" value="<%
				if(pin!=0)
				{
					out.print(pin);
				}
			%>">
	</div>
	<div class="father_info">
		Father Information
	</div>
	<div class="f_photo">
		Photo :
	</div>
	<div class="f_pic" onclick="fPicUploadShow()">
		<img src="./images/user/<%= f_pic %>" alt="<%= f_pic %>" id="f_pic">
	</div>
	<div class="f_salutation">
		Salutation :
	</div>
	<div class="f_salutation_value">
		<select name="f_salutation" id="f_salutation">
			<option value="none"
			<% if(f_salutation==null)
				{
					out.print("selected");
				}
			%>
			>--Select Salutation--</option>
			<option value="MR."
			<% 	if(f_salutation!=null)
				{
					if(f_salutation.equals("MR."))
					{
						out.print("selected");
					}
				}
			%>
			>MR.</option>
			<option value="MS."
			<% 	if(f_salutation!=null)
				{
					if(f_salutation.equals("MS."))
					{
						out.print("selected");
					}
				}
			%>
			>MS.</option>
		</select>
	</div>
	<div class="f_mobile">
		Mobile No. :
	</div>
	<div class="f_mobile_value">
		<input type="text" name="f_mobile" id="f_mobile" value="<%
				if(f_mobile!=0)
				{
					out.print(f_mobile);
				}
			%>">
	</div>
	<div class="f_name">
		Name :
	</div>
	<div class="f_name_value">
		<input type="text" name="f_name" id="f_name" value="<%
				if(f_name!=null)
				{
					out.print(f_name);
				}
			%>">
	</div>
	<div class="f_email">
		Email ID :
	</div>
	<div class="f_email_value">
		<input type="email" name="f_email" id="f_email" value="<%
				if(f_email!=null)
				{
					out.print(f_email);
				}
			%>">
	</div>
	<div class="mother_info">
		Mother Information
	</div>
	<div class="m_photo">
		Photo :
	</div>
	<div class="m_pic" onclick="mPicUploadShow()">
		<img src="./images/user/<%= m_pic %>" alt="<%= m_pic %>" id="m_pic">
	</div>
	<div class="m_salutation">
		Salutation :
	</div>
	<div class="m_salutation_value">
		<select name="m_salutation" id="m_salutation">
			<option value="none"
			<% if(m_salutation==null)
				{
					out.print("selected");
				}
			%>
			>--Select Salutation--</option>
			<option value="MR."
			<% 	if(m_salutation!=null)
				{
					if(m_salutation.equals("MR."))
					{
						out.print("selected");
					}
				}
			%>
			>MR.</option>
			<option value="MS."
			<% 	if(m_salutation!=null)
				{
					if(m_salutation.equals("MS."))
					{
						out.print("selected");
					}
				}
			%>
			>MS.</option>
		</select>
	</div>
	<div class="m_mobile">
		Mobile No. :
	</div>
	<div class="m_mobile_value">
		<input type="text" name="m_mobile" id="m_mobile" value="<%
				if(m_mobile!=0)
				{
					out.print(m_mobile);
				}
			%>">
	</div>
	<div class="m_name">
		Name :
	</div>
	<div class="m_name_value">
		<input type="text" name="m_name" id="m_name" value="<%
				if(m_name!=null)
				{
					out.print(m_name);
				}
			%>">
	</div>
	<div class="m_email">
		Email ID :
	</div>
	<div class="m_email_value">
		<input type="email" name="m_email" id="m_email" value="<%
				if(m_email!=null)
				{
					out.print(m_email);
				}
			%>">
	</div>
	<div class="save_button">
		<input type="submit" name="save" value="SAVE" id="save">
	</div>
	</form>
	<div class="student_upload_profile_logo" id="student_upload_profile_logo">
		<div class="student_upload_form">
			<div class="student_text">
				Student Photo : <br> Select image to set as your profile picture:
				<div class="student_type">(JPEG, JPG, PNG)</div>
				<form action="upload_student?from=admin&who=student&user_id=<%= user_id %>" method="post" enctype="multipart/form-data">
					<input type="file" name="profile_pic" id="profile_pic">
					<input type="submit" name="upload" value="UPLOAD" id="submit">
				</form>
				<button id="cancle" onclick="studentUploadHide()">CANCLE</button>
			</div>
		</div>
	</div>
	<script>
		function studentUploadShow()
		{
			document.getElementById('student_upload_profile_logo').style.display="block";
		}
		function studentUploadHide()
		{
			document.getElementById('student_upload_profile_logo').style.display="none";
		}
	</script>
	<div class="f_pic_upload_profile_logo" id="f_pic_upload_profile_logo">
		<div class="f_pic_upload_form">
			<div class="f_pic_text">
				Father Photo : <br> Select image to set as your profile picture:
				<div class="f_pic_type">(JPEG, JPG, PNG)</div>
				<form action="upload_student?from=admin&who=father&user_id=<%= user_id %>" method="post" enctype="multipart/form-data">
					<input type="file" name="profile_pic" id="profile_pic">
					<input type="submit" name="upload" value="UPLOAD" id="submit">
				</form>
				<button id="cancle" onclick="fPicUploadHide()">CANCLE</button>
			</div>
		</div>
	</div>
	<script>
		function fPicUploadShow()
		{
			document.getElementById('f_pic_upload_profile_logo').style.display="block";
		}
		function fPicUploadHide()
		{
			document.getElementById('f_pic_upload_profile_logo').style.display="none";
		}
	</script>
	<div class="m_pic_upload_profile_logo" id="m_pic_upload_profile_logo">
		<div class="m_pic_upload_form">
			<div class="m_pic_text">
				Mother Photo : <br> Select image to set as your profile picture:
				<div class="m_pic_type">(JPEG, JPG, PNG)</div>
				<form action="upload_student?from=admin&who=mother&user_id=<%= user_id %>" method="post" enctype="multipart/form-data">
					<input type="file" name="profile_pic" id="profile_pic">
					<input type="submit" name="upload" value="UPLOAD" id="submit">
				</form>
				<button id="cancle" onclick="mPicUploadHide()">CANCLE</button>
			</div>
		</div>
	</div>
	<script>
		function mPicUploadShow()
		{
			document.getElementById('m_pic_upload_profile_logo').style.display="block";
		}
		function mPicUploadHide()
		{
			document.getElementById('m_pic_upload_profile_logo').style.display="none";
		}
	</script>
	<%@ include file = "footer.jsp" %>
</body>
</html>