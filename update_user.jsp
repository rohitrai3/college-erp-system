<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@ page import="java.sql.*" %>
  
<%@ include file="admin_header.jsp" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Update User</title>
<link href="./css/update_user.css" rel="stylesheet" type="text/css">
</head>
<body>
	<div class="update_user">
		Update User
	</div>
	<div class="content">
		
	</div>
	<div class="employee">
		Select User :
	</div>
	<form action="select_user?from=admin" method="post">
	<div class="employee_select">
		<input list="users" name="user">
		<datalist id="users">
			<%
				ResultSet f_rs=(ResultSet)request.getAttribute("f_rs");
				String name="";
				String email="";
				while(f_rs.next())
				{
					name=f_rs.getString(1);
					email=f_rs.getString(2);
					out.print("<option value=\""+email+"\">"+name+"</option>");
				}
				ResultSet s_rs=(ResultSet)request.getAttribute("s_rs");
				while(s_rs.next())
				{
					email=s_rs.getString(1);
					name=s_rs.getString(2);
					out.print("<option value=\""+email+"\">"+name+"</option>");
				}
			%>
		</datalist>
	</div>
	<div class="save">
		<input type="submit" name="submit" value="SELECT" id="save">
	</div>
	</form>
	<table id="update_user_table">
		<tr id="table_heading">
			<th width="9%">Account Type</th>
			<th>User Name</th>
			<th>Official Email ID</th>
			<th width="10%">Mobile No.</th>
			<th width="7%">Update</th>
			<th width="7%">Delete</th>
		</tr>
		<%
		/*ResultSet rs=(ResultSet)request.getAttribute("rs");
		String name="";
		String email="";
		int mobile=0;
		int count=0;
		while(rs.next())
		{
			count++;
			name=rs.getString(1);
			email=rs.getString(2);
			mobile=rs.getInt(3);
			if(count%2!=0)
			{
				out.print("<tr class=\"even_row\">");
				out.print("<td class=\"col2\">"+count+"</td>");
				out.print("<td class=\"col2\">"+name+"</td>");
				out.print("<td class=\"col2\">"+email+"</td>");
				out.print("<td class=\"col2\">"+mobile+"</td>");
				out.print("<td class=\"col2\"><a href=\"my_profile_personal?page_from=new_my_profile.jsp&user_id="+email+"\">Update</a></td>");
				out.print("<td class=\"col12_row1\"><a href=\"delete_user?user_id="+email+"\">Delete</a></td>");
				out.print("</tr>");
			}
			else
			{
				out.print("<tr class=\"odd_row\">");
				out.print("<td class=\"col2\">"+count+"</td>");
				out.print("<td class=\"col2\">"+name+"</td>");
				out.print("<td class=\"col2\">"+email+"</td>");
				out.print("<td class=\"col2\">"+mobile+"</td>");
				out.print("<td class=\"col2\"><a href=\"my_profile_personal?page_from=new_my_profile.jsp&user_id="+email+"\">Update</a></td>");
				out.print("<td class=\"col12_row1\"><a href=\"delete_user?user_id="+email+"\">Delete</a></td>");
				out.print("</tr>");
			}
		}*/
		String user_name=(String)request.getAttribute("name");
		if(user_name!=null)
		{
			String user_email=(String)request.getAttribute("email");
			long user_mobile=(Long)request.getAttribute("mobile");
			String user_type=(String)request.getAttribute("type");
			out.print("<tr class=\"even_row\">");
			out.print("<td class=\"col2\">"+user_type+"</td>");
			out.print("<td class=\"col2\">"+user_name+"</td>");
			out.print("<td class=\"col2\">"+user_email+"</td>");
			out.print("<td class=\"col2\">"+user_mobile+"</td>");
			out.print("<td class=\"col2\"><a href=\"update_details?from=admin&user_id="+user_email+"\">Update</a></td>");
			out.print("<td class=\"col12_row1\"><a href=\"delete_user?user_id="+user_email+"\">Delete</a></td>");
			out.print("</tr>");
		}
	%>
		<tr class="odd_row">
			<td class="col2_row51"></td>
			<td class="col2_row51"></td>
			<td class="col2_row51"></td>
			<td class="col2_row51"></td>
			<td class="col2_row51"></td>
			<td class="col12_row51"></td>
		</tr>
	</table>
	<%@ include file="footer.jsp" %>
</body>
</html>