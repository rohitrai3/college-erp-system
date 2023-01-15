<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@ include file="admin_header.jsp" %>
    
<%
	String employee_name=(String)session.getAttribute("employee_name");
	String user_id=(String)session.getAttribute("employee_id");
	String p_address=(String)request.getAttribute("p_address");
	String p_state=(String)request.getAttribute("p_state");
	int p_pin=(Integer)request.getAttribute("p_pin");
	String p_country=(String)request.getAttribute("p_country");
	String p_city=(String)request.getAttribute("p_city");
	String c_address=(String)request.getAttribute("c_address");
	String c_state=(String)request.getAttribute("c_state");
	int c_pin=(Integer)request.getAttribute("c_pin");
	String c_country=(String)request.getAttribute("c_country");
	String c_city=(String)request.getAttribute("c_city");
%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>My Profile - Address</title>
<link rel="icon" href="./images/c_logo.png">
<link href="./css/new_my_profile_address.css" rel="stylesheet" type="text/css">
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
	<form action="update_my_profile_address" method="post">
	<input type="hidden" name="page_from" value="new_my_profile_address.jsp">
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
			<div class="profile_nav_address"  id="profile_nav_active">
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
		<div class="permanent_address">
			<strong>Permanent Address Information</strong>
		</div>
		<div class="address">
			<strong>Address :</strong>
		</div>
		<div class="address_input">
			<input type="text" name="p_address" id="address"  value="<%
				if(p_address!=null)
				{
					out.print(p_address);
				}
			%>">
		</div>
		<div class="state">
			<strong>State :</strong>
		</div>
		<div class="state_select">
			<select name="p_state" id="state">
				 <option value="none"
				 <% if(p_state==null)
						{
							out.print("selected");
						}
					%>
				 >--Select State--</option>
				 <option value="Andhra Pradesh"
				 <% 	if(p_state!=null)
						{
							if(p_state.equals("Andhra Pradesh"))
							{
								out.print("selected");
							}
						}
					%>
				 >Andhra Pradesh</option>
				 <option value="Arunachal Pradesh"
				  <% 	if(p_state!=null)
						{
							if(p_state.equals("Arunachal Pradesh"))
							{
								out.print("selected");
							}
						}
					%>
				 >Arunachal Pradesh</option>
				<option value="Haryana"
				 <% 	if(p_state!=null)
						{
							if(p_state.equals("Haryana"))
							{
								out.print("selected");
							}
						}
					%>
				>Haryana</option>
			</select>
		</div>
		<div class="pin">
			<strong>Pin No. :</strong>
		</div>
		<div class="pin_input">
			<input type="text" name="p_pin" id="pin"  value="<%
				if(p_pin!=0)
				{
					out.print(p_pin);
				}
			%>">
		</div>
		<div class="country">
			<strong>Country :</strong>
		</div>
		<div class="country_select">
			<select name="p_country" id="country">
				<option value="none"
				<% if(p_country==null)
						{
							out.print("selected");
						}
					%>
				>--Select Country--</option>
				<option value="Afghanistan"
				<% 	if(p_country!=null)
						{
							if(p_country.equals("Afghanistan"))
							{
								out.print("selected");
							}
						}
					%>
				>Afghanistan</option>
				<option value="Albania"
				<% 	if(p_country!=null)
						{
							if(p_country.equals("Albania"))
							{
								out.print("selected");
							}
						}
					%>
				>Albania</option>
				<option value="India"
				<% 	if(p_country!=null)
						{
							if(p_country.equals("India"))
							{
								out.print("selected");
							}
						}
					%>
				>India</option>
			</select>
		</div>
		<div class="city">
			<strong>City :</strong>
		</div>
		<div class="city_select">
			<select name="p_city" id="city">
				<option value="none"
				<% if(p_city==null)
						{
							out.print("selected");
						}
					%>
				>--Select City--</option>
				<option value="Faridabad"
				<% 	if(p_city!=null)
						{
							if(p_city.equals("Faridabad"))
							{
								out.print("selected");
							}
						}
					%>
				>Faridabad</option>
				<option value="Gurugram"
				<% 	if(p_city!=null)
						{
							if(p_city.equals("Gurugram"))
							{
								out.print("selected");
							}
						}
					%>
				>Gurugram</option>
				<option value="Panipat"
				<% 	if(p_city!=null)
						{
							if(p_city.equals("Panipat"))
							{
								out.print("selected");
							}
						}
					%>
				>Panipat</option>
			</select>
		</div>
		<div class="corrs_address">
			<strong>Correspondence Address Information</strong>
		</div>
		<div class="same_as">
			<strong>Same as Permanent</strong>
		</div>
		<div class="check">
			<input type="checkbox" name="c_check" id="check" onclick="same()">
		</div>
		<script>
			function same()
			{
				document.getElementById("c_address").value=document.getElementById("address").value;
				document.getElementById("c_pin").value=document.getElementById("pin").value;
				document.getElementById("c_country").value=document.getElementById("country").value;
				document.getElementById("c_city").value=document.getElementById("city").value;
				document.getElementById("c_state").value=document.getElementById("state").value;
			}
		</script>
		<div class="c_address">
			<strong>Address :</strong>
		</div>
		<div class="c_address_input">
			<input type="text" name="c_address" id="c_address"  value="<%
				if(c_address!=null)
				{
					out.print(c_address);
				}
			%>">
		</div>
		<div class="c_state">
			<strong>State :</strong>
		</div>
		<div class="c_state_select">
			<select name="c_state" id="c_state">
				 <option value="none"
				 <% if(c_state==null)
						{
							out.print("selected");
						}
					%>
				 >--Select State--</option>
				 <option value="Andhra Pradesh"
				 <% 	if(c_state!=null)
						{
							if(c_state.equals("Andhra Pradesh"))
							{
								out.print("selected");
							}
						}
					%>
				 >Andhra Pradesh</option>
				 <option value="Arunachal Pradesh"
				 <% 	if(c_state!=null)
						{
							if(c_state.equals("Arunachal Pradesh"))
							{
								out.print("selected");
							}
						}
					%>
				 >Arunachal Pradesh</option>
				<option value="Haryana"
				<% 	if(c_state!=null)
						{
							if(c_state.equals("Haryana"))
							{
								out.print("selected");
							}
						}
					%>
				>Haryana</option>
			</select>
		</div>
		<div class="c_pin">
			<strong>Pin No. :</strong>
		</div>
		<div class="c_pin_input">
			<input type="text" name="c_pin" id="c_pin"  value="<%
				if(c_pin!=0)
				{
					out.print(c_pin);
				}
			%>">
		</div>
		<div class="c_country">
			<strong>Country :</strong>
		</div>
		<div class="c_country_select">
			<select name="c_country" id="c_country">
				<option value="none"
				<% if(c_country==null)
						{
							out.print("selected");
						}
					%>
				>--Select Country--</option>
				<option value="Afghanistan"
				<% 	if(c_country!=null)
						{
							if(c_country.equals("Afghanistan"))
							{
								out.print("selected");
							}
						}
					%>
				>Afghanistan</option>
				<option value="Albania"
				<% 	if(c_country!=null)
						{
							if(c_country.equals("Albania"))
							{
								out.print("selected");
							}
						}
					%>
				>Albania</option>
				<option value="India"
				<% 	if(c_country!=null)
						{
							if(c_country.equals("India"))
							{
								out.print("selected");
							}
						}
					%>
				>India</option>
			</select>
		</div>
		<div class="c_city">
			<strong>City :</strong>
		</div>
		<div class="c_city_select">
			<select name="c_city" id="c_city">
				<option value="none"
				<% if(c_city==null)
						{
							out.print("selected");
						}
					%>
				>--Select City--</option>
				<option value="Faridabad"
				<% 	if(c_city!=null)
						{
							if(c_city.equals("Faridabad"))
							{
								out.print("selected");
							}
						}
					%>
				>Faridabad</option>
				<option value="Gurugram"
				<% 	if(c_city!=null)
						{
							if(c_city.equals("Gurugram"))
							{
								out.print("selected");
							}
						}
					%>
				>Gurugram</option>
				<option value="Panipat"
				<% 	if(c_city!=null)
						{
							if(c_city.equals("Panipat"))
							{
								out.print("selected");
							}
						}
					%>
				>Panipat</option>
			</select>
		</div>
	</div>
	<div class="save_button">
		<input type="submit" name="save" value="SAVE" id="save">
	</div>
	</form>
	<%@ include file = "footer.jsp" %>
</body>
</html>