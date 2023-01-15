<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@ include file="admin_header.jsp" %>

<%  
	String salutation=(String)request.getAttribute("salutation");
	long mobile=(Long)request.getAttribute("mobile");
	long phone=(Long)request.getAttribute("phone");
	String gender=(String)request.getAttribute("gender");
	String marital=(String)request.getAttribute("marital");
	String spouse=(String)request.getAttribute("spouse");
	String spouse_occupation=(String)request.getAttribute("spouse_occupation");
	long spouse_contact=(Long)request.getAttribute("spouse_contact");
	String anniversary=(String)request.getAttribute("anniversary");
	String nationality=(String)request.getAttribute("nationality");
	String person1=(String)request.getAttribute("person1");
	String person2=(String)request.getAttribute("person2");
	String name=(String)request.getAttribute("name");
	String personal_id=(String)request.getAttribute("personal_id");
	String dob=(String)request.getAttribute("dob");
	String spouse_qualification=(String)request.getAttribute("spouse_qualification");
	String spouse_address=(String)request.getAttribute("spouse_address");
	String spouse_id=(String)request.getAttribute("spouse_id");
	long contact1=(Long)request.getAttribute("contact1");
	long contact2=(Long)request.getAttribute("contact2");
%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Administrator My Profile</title>
<link href="./css/admin_my_profile.css" rel="stylesheet" type="text/css">
</head>

<body onload="checkMarital()">
	<form action="update_my_profile_personal?page_from=admin_my_profile.jsp" method="post">
	<div class="content">
		<div class="image">
			<strong>Image :</strong>
		</div>
		<div class="profile_logo" onclick="uploadShow()">
			<img src="./images/user/<%= session_image %>" alt="<%= session_image %>" id="profile_logo">
		</div>
		<div class="remove_image">
			<a href="remove_image?page_from=admin_my_profile.jsp">Remove Image</a>
		</div>
		<div class="salutation">
			<strong>Salutation :</strong>
		</div>
		<div class="salutation_select">
			<select name="salutation" id="salutation">
				<option value="none" 
				<% if(salutation==null)
					{
						out.print("selected");
					}
				%>
				>--Select Salutation--</option>
				<option value="Ms." 
				<% 	if(salutation!=null)
					{
						if(salutation.equals("Ms."))
						{
							out.print("selected");
						}
					}
				%>
					>Ms.</option>
				<option value="Mr." 
				<% 	if(salutation!=null)
					{
						if(salutation.equals("Mr."))
						{
							out.print("selected");
						}
					}
				%>
				>Mr.</option>
			</select>
		</div>
		<div class="mobile">
			<strong>Mobile No. :</strong>
		</div>
		<div class="mobile_input">
			<input type="text" name="mobile" id="mobile" value="<%
				if(mobile!=0)
				{
					out.print(mobile);
				}
			%>">
		</div>
		<div class="phone">
			<strong>Phone No. :</strong>
		</div>
		<div class="phone_input">
			<input type="text" name="phone" id="phone" value="<%
				if(phone!=0)
				{
					out.print(phone);
				}
			%>">
		</div>
		<div class="gender">
			<strong>Gender</strong>
		</div>
		<div class="gender_select">
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
		<div class="marital">
			<strong>Marital Status :</strong>
		</div>
		<div class="marital_select">
			<select name="marital" id="marital" onclick="checkMarital()">
				<option value="none"
				<% if(marital==null)
					{
						out.print("selected");
					}
				%>
				>--Select Marital Status--</option>
				<option value="Married" 
				<% 	if(marital!=null)
					{
						if(marital.equals("Married"))
						{
							out.print("selected");
						}
					}
				%>
				  >Married</option>
				<option value="Single" 
				<% 	if(marital!=null)
					{
						if(marital.equals("Single"))
						{
							out.print("selected");
						}
					}
				%>
				>Single</option>
				<option value="Widowed" 
				<% 	if(marital!=null)
					{
						if(marital.equals("Widowed"))
						{
							out.print("selected");
						}
					}
				%>
				>Widowed</option>
				<option value="Divorced" 
				<% 	if(marital!=null)
					{
						if(marital.equals("Divorced"))
						{
							out.print("selected");
						}
					}
				%>
				>Divorced</option>
			</select>
		</div>
		<script>
			function checkMarital()
			{
				var status=document.getElementById('marital').value;
				if(status=='Single')
					{
						document.getElementById('spouse').disabled=true;
						document.getElementById('spouse_occupation').disabled=true;
						document.getElementById('spouse_contact').disabled=true;
						document.getElementById('anniversary').disabled=true;
						document.getElementById('spouse_qualification').disabled=true;
						document.getElementById('spouse_address').disabled=true;
						document.getElementById('spouse_id').disabled=true;
					}
				else
					{
						document.getElementById('spouse').disabled=false;
						document.getElementById('spouse_occupation').disabled=false;
						document.getElementById('spouse_contact').disabled=false;
						document.getElementById('anniversary').disabled=false;
						document.getElementById('spouse_qualification').disabled=false;
						document.getElementById('spouse_address').disabled=false;
						document.getElementById('spouse_id').disabled=false;
					}
			}
		</script>
		<div class="spouse">
			<strong>Spouse Name :</strong>
		</div>
		<div class="spouse_input">
			<input type="text" name="spouse" id="spouse" value="<%
				if(spouse!=null)
				{
					out.print(spouse);
				}
			%>">
		</div>
		<div class="spouse_occupation">
			<strong>Spouse's Occupation :</strong>
		</div>
		<div class="spouse_occupation_input">
			<input type="text" name="spouse_occupation" id="spouse_occupation" value="<%
				if(spouse_occupation!=null)
				{
					out.print(spouse_occupation);
				}
			%>">
		</div>
		<div class="spouse_contact">
			<strong>Spouse's Contact No. :</strong>
		</div>
		<div class="spouse_contact_input">
			<input type="text" name="spouse_contact" id="spouse_contact" value="<%
				if(spouse_contact!=0)
				{
					out.print(spouse_contact);
				}
			%>">
		</div>
		<div class="anniversary">
			<strong>Date of Anniversary :</strong>
		</div>
		<div class="anniversary_input">
			<input type="date" name="anniversary" id="anniversary" value="<%
				if(anniversary!=null)
				{
					out.print(anniversary);
				}
			%>">
		</div>
		<div class="nationality">
			<strong>Nationality :</strong>
		</div>
		<div class="nationality_input">
			<input type="text" name="nationality" id="nationality" value="<%
				if(nationality!=null)
				{
					out.print(nationality);
				}
			%>">
		</div>
		<div class="person1">
			<strong>Emergency Contact Person 1 :</strong>
		</div>
		<div class="person1_input">
			<input type="text" name="person1" id="person1" value="<%
				if(person1!=null)
				{
					out.print(person1);
				}
			%>">
		</div>
		<div class="person2">
			<strong>Emergency Contact Person 2 :</strong>
		</div>
		<div class="person2_input">
			<input type="text" name="person2" id="person2" value="<%
				if(person2!=null)
				{
					out.print(person2);
				}
			%>">
		</div>
		<div class="name">
			<strong>Name :</strong>
		</div>
		<div class="name_input">
			<input type="text" name="name" id="name" value="<%
				if(name!=null)
				{
					out.print(name);
				}
			%>">
		</div>
		<div class="official_id">
			<strong>Official Email ID :</strong>
		</div>
		<div class="official_id_input">
			<input type="email" name="official_id" id="official_id" value="<%
				if(official_id!=null)
				{
					out.print(official_id);
				}
			%>" readonly>
		</div>
		<div class="personal_id">
			<strong>Personal Email ID :</strong>
		</div>
		<div class="personal_id_input">
			<input type="email" name="personal_id" id="personal_id" value="<%
				if(personal_id!=null)
				{
					out.print(personal_id);
				}
			%>">
		</div>
		<div class="dob">
			<strong>Date of Birth :</strong>
		</div>
		<div class="dob_input">
			<input type="date" name="dob" id="dob" value="<%
				if(dob!=null)
				{
					out.print(dob);
				}
			%>">
		</div>
		<div class="spouse_qualification">
			<strong>Spouse's Qualification :</strong>
		</div>
		<div class="spouse_qualification_input">
			<input type="text" name="spouse_qualification" id="spouse_qualification" value="<%
				if(spouse_qualification!=null)
				{
					out.print(spouse_qualification);
				}
			%>">
		</div>
		<div class="spouse_address">
			<strong>Spouse's Address of Business<br>Premises :</strong>
		</div>
		<div class="spouse_address_input">
			<textarea name="spouse_address" id="spouse_address"><%
				if(spouse_address!=null)
				{
					out.print(spouse_address);
				}
			%></textarea>
		</div>
		<div class="spouse_id">
			<strong>Spouse's Email ID :</strong>
		</div>
		<div class="spouse_id_input">
			<input type="email" name="spouse_id" id="spouse_id" value="<%
				if(spouse_id!=null)
				{
					out.print(spouse_id);
				}
			%>">
		</div>
		<div class="contact1">
			<strong>Contact No. :</strong>
		</div>
		<div class="contact1_input">
			<input type="text" name="contact1" id="contact1" value="<%
				if(contact1!=0)
				{
					out.print(contact1);
				}
			%>">
		</div>
		<div class="contatc2">
			<strong>Contact No. :</strong>
		</div>
		<div class="contact2_input">
			<input type="text" name="contact2" id="contact2" value="<%
				if(contact2!=0)
				{
					out.print(contact2);
				}
			%>">
		</div>
	</div>
	<div class="save_button">
		<input type="submit" name="save" value="SAVE" id="save">
	</div>
	</form>
	<div class="upload_profile_logo" id="upload_profile_logo">
		<div class="upload_form">
			<div class="text">
				Select image to set as your profile picture:
				<div class="type">(JPEG, JPG, PNG)</div>
			<form action="upload_profile_picture?page_from=admin_my_profile.jsp" method="post" enctype="multipart/form-data">
				<input type="file" name="profile_pic" id="profile_pic">
				<input type="submit" name="upload" value="UPLOAD" id="submit">
			</form>
				<button id="cancle" onclick="uploadHide()">CANCLE</button>
			</div>
		</div>
	</div>
	<script>
		function uploadShow()
		{
			document.getElementById('upload_profile_logo').style.display="block";
		}
		function uploadHide()
		{
			document.getElementById('upload_profile_logo').style.display="none";
		}
	</script>
	<%@ include file="footer.jsp" %>
</body>
</html>