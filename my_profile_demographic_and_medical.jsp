<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@ include file = "header.jsp" %>
    
<%
	String place_of_birth=(String)request.getAttribute("place_of_birth");
	String religion=(String)request.getAttribute("religion");
	String languages=(String)request.getAttribute("languages");
	String blood_group=(String)request.getAttribute("blood_group");
	String mother_toungue=(String)request.getAttribute("mother_toungue");
	String first_check=(String)request.getAttribute("first_check");
	String second_check=(String)request.getAttribute("second_check");
	String third_check=(String)request.getAttribute("third_check");
	String fourth_check=(String)request.getAttribute("fourth_check");
	String fifth_check=(String)request.getAttribute("fifth_check");
	String sixth_check=(String)request.getAttribute("sixth_check");
	String seventh_check=(String)request.getAttribute("seventh_check");
	String eight_check=(String)request.getAttribute("eight_check");
	String remarks=(String)request.getAttribute("remarks");
%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>My Profile - Demographic and Medical</title>
<link href="./css/my_profile_demographic_and_medical.css" rel="stylesheet" type="text/css">
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
	<form action="update_my_profile_demographic_and_medical" method="post">
	<input type="hidden" name="page_from" value="my_profile_demographic_and_medical.jsp">
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
			<div class="profile_nav_medical" id="profile_nav_active">
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
		<div class="birth">
			<strong>Place of Birth :</strong>
		</div>
		<div class="birth_input">
			<input type="text" name="place_of_birth" id="birth" value="<%
				if(place_of_birth!=null)
				{
					out.print(place_of_birth);
				}
			%>">
		</div>
		<div class="religion">
			<strong>Religion :</strong>
		</div>
		<div class="religion_select">
			<select name="religion" id="religion">
				<option value="none"
				<% if(religion==null)
						{
							out.print("selected");
						}
					%>
				>--Select Religion--</option>
				<option value="hinduism"
				<% 	if(religion!=null)
						{
							if(religion.equals("hinduism"))
							{
								out.print("selected");
							}
						}
					%>
				>Hinduism</option>
				<option value="islam"
				<% 	if(religion!=null)
						{
							if(religion.equals("islam"))
							{
								out.print("selected");
							}
						}
					%>
				>Islam</option>
				<option value="christanity"
				<% 	if(religion!=null)
						{
							if(religion.equals("christanity"))
							{
								out.print("selected");
							}
						}
					%>
				>Christanity</option>
				<option value="sikhism"
				<% 	if(religion!=null)
						{
							if(religion.equals("sikhism"))
							{
								out.print("selected");
							}
						}
					%>
				>Sikhism</option>
				<option value="buddhism"
				<% 	if(religion!=null)
						{
							if(religion.equals("buddhism"))
							{
								out.print("selected");
							}
						}
					%>
				>Buddhism</option>
				<option value="jainism"
				<% 	if(religion!=null)
						{
							if(religion.equals("jainism"))
							{
								out.print("selected");
							}
						}
					%>
				>Jainism</option>
			</select>
		</div>
		<div class="lang">
			<strong>Known Languages :</strong>
		</div>
		<div class="lang_input">
			<input type="text" name="languages" id="lang" value="<%
				if(languages!=null)
				{
					out.print(languages);
				}
			%>">
		</div>
		<div class="blood">
			<strong>Blood Group :</strong>
		</div>
		<div class="blood_select">
			<select name="blood_group" id="blood">
				<option value="none"
				<% if(blood_group==null)
						{
							out.print("selected");
						}
					%>
				>--Select Blood Group--</option>
				<option value="ap"
				<% 	if(blood_group!=null)
						{
							if(blood_group.equals("ap"))
							{
								out.print("selected");
							}
						}
					%>
				>A+</option>
				<option value="an"
				<% 	if(blood_group!=null)
						{
							if(blood_group.equals("an"))
							{
								out.print("selected");
							}
						}
					%>
				>A-</option>
				<option value="bp"
				<% 	if(blood_group!=null)
						{
							if(blood_group.equals("bp"))
							{
								out.print("selected");
							}
						}
					%>
				>B+</option>
				<option value="bn"
				<% 	if(blood_group!=null)
						{
							if(blood_group.equals("bn"))
							{
								out.print("selected");
							}
						}
					%>
				>B-</option>
				<option value="abp"
				<% 	if(blood_group!=null)
						{
							if(blood_group.equals("abp"))
							{
								out.print("selected");
							}
						}
					%>
				>AB+</option>
				<option value="abn"
				<% 	if(blood_group!=null)
						{
							if(blood_group.equals("abn"))
							{
								out.print("selected");
							}
						}
					%>
				>AB-</option>
				<option value="op"
				<% 	if(blood_group!=null)
						{
							if(blood_group.equals("op"))
							{
								out.print("selected");
							}
						}
					%>
				>O+</option>
				<option value="on"
				<% 	if(blood_group!=null)
						{
							if(blood_group.equals("on"))
							{
								out.print("selected");
							}
						}
					%>
				>O-</option>
			</select>
		</div>
		<div class="toungue">
			<strong>Mother Toungue :</strong>
		</div>
		<div class="toungue_input">
			<input type="text" name="mother_toungue" id="toungue" value="<%
				if(mother_toungue!=null)
				{
					out.print(mother_toungue);
				}
			%>">
		</div>
		<div class="others">
			<strong>Others</strong>
		</div>
		<div class="first_line">
			<strong>1. </strong>Any Physical disability(medically diagnosed).
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
			%>
			>
		</div>
		<div class="second_line">
			<strong>2. </strong>Suffering from any chronic disease.
		</div>
		<div class="second_check">
			<input type="checkbox" name="second_check" value="yes" id="second_check"
			<%  if(second_check!=null)
				{
					if(second_check.equals("yes"))
					{
						out.print("checked");
					}
				}
			%>
			>
		</div>
		<div class="third_line">
			<strong>3. </strong>Suffering from any kind of allergy, etc.
		</div>
		<div class="third_check">
			<input type="checkbox" name="third_check" value="yes" id="third_check"
			<%  if(third_check!=null)
				{
					if(third_check.equals("yes"))
					{
						out.print("checked");
					}
				}
			%>
			>
		</div>
		<div class="fourth_line">
			<strong>4. </strong>Suffering from any kind of depression.
		</div>
		<div class="fourth_check">
			<input type="checkbox" name="fourth_check" value="yes" id="forth_check"
			<%  if(fourth_check!=null)
				{
					if(fourth_check.equals("yes"))
					{
						out.print("checked");
					}
				}
			%>
			>
		</div>
		<div class="fifth_line">
			<strong>5. </strong>Undergone any major surgery.
		</div>
		<div class="fifth_check">
			<input type="checkbox" name="fifth_check" value="yes" id="fifth_check"
			<%  if(fifth_check!=null)
				{
					if(fifth_check.equals("yes"))
					{
						out.print("checked");
					}
				}
			%>
			>
		</div>
		<div class="sixth_line">
			<strong>6. </strong>Are you diabetic.
		</div>
		<div class="sixth_check">
			<input type="checkbox" name="sixth_check" value="yes" id="sixth_check"
			<%  if(sixth_check!=null)
				{
					if(sixth_check.equals("yes"))
					{
						out.print("checked");
					}
				}
			%>
			>
		</div>
		<div class="seventh_line">
			<strong>7. </strong>Any case of drug abuse or rehabilitation disgnosis.
		</div>
		<div class="seventh_check">
			<input type="checkbox" name="seventh_check" value="yes" id="seventh_check"
			<%  if(seventh_check!=null)
				{
					if(seventh_check.equals("yes"))
					{
						out.print("checked");
					}
				}
			%>
			>
		</div>
		<div class="eigth_line">
			<strong>8. </strong>Are you still under medical prescription.
		</div>
		<div class="eight_check">
			<input type="checkbox" name="eight_check" value="yes" id="eight_check"
			<%  if(eight_check!=null)
				{
					if(eight_check.equals("yes"))
					{
						out.print("checked");
					}
				}
			%>
			>
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