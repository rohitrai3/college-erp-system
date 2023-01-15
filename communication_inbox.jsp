<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Communication - Inbox</title>
<link href="./css/communication_inbox.css" rel="stylesheet" type="text/css">
</head>
<body>
	<%@ include file = "header.jsp" %>
	
	
	
	<div class="inbox">
		Inbox
	</div>
	<div class="content">
		
	</div>
	<div class="organisation">
		<strong>Organisation :</strong>
	</div>
	<div class="organisation_select">
		<select name="organisation" id="organisation">
			<option value="all">All</option>
		</select>
	</div>
	<div class="comm_type">
		<strong>Communication Type :</strong>
	</div>
	<div class="comm_type_select">
		<select name="comm_type" id="comm_type">
			<option value="all">All</option>
		</select>
	</div>
	<div class="status">
		<strong>Status :</strong>
	</div>
	<div class="status_select">
		<select name="status" id="status">
			<option value="all">All</option>
		</select>
	</div>
	<div class="message_to">
		<strong>Created By :</strong>
	</div>
	<div class="message_to_select">
		<select name="message_to" id="message_to">
			<option value="all">All</option>
		</select>
	</div>
	<div class="date">
		<strong>Date :</strong>
	</div>
	<div class="date_input">
		<input type="text" name="date" id="date">
	</div>
	<div class="go_button">
		<button id="go_button">GO</button>
	</div>
	<div class="prev">
		<img src="./images/prev.png" alt="prev" id="prev">
	</div>
	<div class="pages">
		1 to 50
	</div>
	<div class="next">
		<img src="./images/next.png" alt="next" id="next">
	</div>
	<table id="inbox_table">
		<tr id="table_heading">
			<th>Sr no.</th>
			<th>Detail</th>
			<th>Status</th>
			<th>Communication Type</th>
			<th>From</th>
			<th>Subject</th>
			<th>Date</th>
		</tr>
		<tr class="even_row">
		    <td class="col2">1</td>
			<td class="col2"></td>
			<td class="col2"></td>
			<td class="col2"></td>
			<td class="col2"></td>
			<td class="col2"></td>
			<td class="col12_row1"></td>
		</tr>
		<tr class="odd_row">
			<td class="col2_row51">2</td>
			<td class="col2_row51"></td>
			<td class="col2_row51"></td>
			<td class="col2_row51"></td>
			<td class="col2_row51"></td>
			<td class="col2_row51"></td>
			<td class="col12_row51"></td>
		</tr>
	</table>
	
	<%@ include file = "footer.jsp" %>
</body>
</html>