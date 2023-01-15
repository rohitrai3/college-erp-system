<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Communication - Outbox</title>
<link href="./css/communication_outbox.css" rel="stylesheet" type="text/css">
</head>
<body>
	<%@ include file = "header.jsp" %>
	
	
	
	<div class="outbox">
		Outbox
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
	<div class="prev">
		<img src="./images/prev.png" alt="prev" id="prev">
	</div>
	<div class="pages">
		1 to 50
	</div>
	<div class="next">
		<img src="./images/next.png" alt="next" id="next">
	</div>
	<table id="outbox_table">
		<tr id="table_heading">
			<th>Sr no.</th>
			<th>Detail</th>
			<th>Communication Type</th>
			<th>To</th>
			<th>Subject</th>
			<th>Date</th>
		</tr>
		<tr class="even_row">
		    <td class="col2">1</td>
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
			<td class="col12_row51"></td>
		</tr>
	</table>
	
	<%@ include file = "footer.jsp" %>
</body>
</html>