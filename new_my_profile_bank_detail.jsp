<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@ include file="admin_header.jsp" %>
    
<%
	String employee_name=(String)session.getAttribute("employee_name");
	String user_id=(String)session.getAttribute("employee_id");
	String payment_type=(String)request.getAttribute("payment_type");
	String branch=(String)request.getAttribute("branch");
	String ifsc_code=(String)request.getAttribute("ifsc_code");
	String esi_no=(String)request.getAttribute("esi_no");
	String bank=(String)request.getAttribute("bank");
	int account_no=(Integer)request.getAttribute("account_no");
	String pf_no=(String)request.getAttribute("pf_no");
%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>My Profile - Bank Detail</title>
<link href="./css/new_my_profile_bank_detail.css" rel="stylesheet" type="text/css">
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
	<form action="update_my_profile_bank_detail" method="post">
	<input type="hidden" name="page_from" value="new_my_profile_bank_detail.jsp">
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
			<div class="profile_nav_address">
				<strong><a href="new_my_profile_address?page_from=new_my_profile_address.jsp">Address</a></strong>
			</div>
			<div class="profile_nav_additional">
				<strong><a href="new_my_profile_additional_information?page_from=new_my_profile_additional_information.jsp">Additional Information</a></strong>
			</div>
			<div class="profile_nav_bank"  id="profile_nav_active">
				<strong><a href="new_my_profile_bank_detail?page_from=new_my_profile_bank_detail.jsp">Bank Detail</a></strong>
			</div>
			<div class="profile_nav_family">
				<strong><a href="new_my_profile_family_details?page_from=new_my_profile_family_details.jsp">Family Details</a></strong>
			</div>
			<div class="profile_nav_other">
				<strong><a href="new_my_profile_other?page_from=new_my_profile_other.jsp">Other</a></strong>
			</div>
		</div>
		<div class="bank_account_info">
			<strong>Bank Account Information</strong>
		</div>
		<div class="payment_type">
			<strong>Salary Payment Type :</strong>
		</div>
		<div class="payment_type_select">
			<select name="payment_type" id="payment_type">
				<option value="none"
				<% if(payment_type==null)
						{
							out.print("selected");
						}
					%>
				>--Select Payment Type--</option>
				<option value="payment in bank"
				<% 	if(payment_type!=null)
						{
							if(payment_type.equals("payment in bank"))
							{
								out.print("selected");
							}
						}
					%>
				>Payment in Bank</option>
				<option value="cheque"
				<% 	if(payment_type!=null)
						{
							if(payment_type.equals("cheque"))
							{
								out.print("selected");
							}
						}
					%>
				>Cheque</option>
				<option value="cash"
				<% 	if(payment_type!=null)
						{
							if(payment_type.equals("cash"))
							{
								out.print("selected");
							}
						}
					%>
				>Cash</option>
			</select>
		</div>
		<div class="branch">
			<strong>Bank Branch :</strong>
		</div>
		<div class="branch_input">
			<input type="text" name="branch" id="branch" value="<%
				if(branch!=null)
				{
					out.print(branch);
				}
			%>">
		</div>
		<div class="ifsc_code">
			<strong>Bank IFSC Code :</strong>
		</div>
		<div class="ifsc_code_input">
			<input type="text" name="ifsc_code" id="ifsc_code" value="<%
				if(ifsc_code!=null)
				{
					out.print(ifsc_code);
				}
			%>">
		</div>
		<div class="esi_no">
			<strong>ESI No. :</strong>
		</div>
		<div class="esi_no_input">
			<input type="text" name="esi_no" id="esi_no" value="<%
				if(esi_no!=null)
				{
					out.print(esi_no);
				}
			%>">
		</div>
		<div class="bank">
			<strong>Bank :</strong>
		</div>
		<div class="bank_select">
			<select name="bank" id="bank">
				<option value="none"
				<% if(bank==null)
						{
							out.print("selected");
						}
					%>
				>--Select Bank--</option>
				<option value="hdfc"
				<% 	if(bank!=null)
						{
							if(bank.equals("hdfc"))
							{
								out.print("selected");
							}
						}
					%>
				>HDFC Bank</option>
				<option value="icici"
				<% 	if(bank!=null)
						{
							if(bank.equals("icici"))
							{
								out.print("selected");
							}
						}
					%>
				>ICICI Bank</option>
				<option value="sbi"
				<% 	if(bank!=null)
						{
							if(bank.equals("sbi"))
							{
								out.print("selected");
							}
						}
					%>
				>SBI Bank</option>
			</select>
		</div>
		<div class="account_no">
			<strong>Account No. :</strong>
		</div>
		<div class="account_no_input">
			<input type="text" name="account_no" id="account_no" value="<%
				if(account_no!=0)
				{
					out.print(account_no);
				}
			%>">
		</div>
		<div class="pf_no">
			<strong>PF No. :</strong>
		</div>
		<div class="pf_no_input">
			<input type="text" name="pf_no" id="pf_no" value="<%
				if(pf_no!=null)
				{
					out.print(pf_no);
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