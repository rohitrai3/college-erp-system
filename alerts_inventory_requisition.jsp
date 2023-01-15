<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Alerts/Approval - Inventory Requisition</title>
<link href="./css/alerts_inventory_requisition.css" rel="stylesheet" type="text/css">
</head>
<body>
	<%@ include file = "header.jsp" %>
	
	
	
	<div class="requisition">
		Requisitions
	</div>
	<div class="content">
		
	</div>
	<div class="store">
		<strong>Store :</strong>
	</div>
	<div class="store_select">
		<select name="organisation" id="organisation">
			<option value="all">All</option>
		</select>
	</div>
	<div class="from_date">
		<strong>From Date :</strong>
	</div>
	<div class="from_date_input">
		<input type="text" name="from_date" id="from_date">
	</div>
	<div class="to_date">
		<strong>To Date :</strong>
	</div>
	<div class="to_date_input">
		<input type="text" name="to_date" id="to_date">
	</div>
	<div class="search_input">
		<input type="text" name="date" id="date">
	</div>
	<div class="go_button">
		<button id="go_button">GO</button>
	</div>
	<div class="add_requisition">
		<button id="add_requisition">ADD REQUISITION</button>
	</div>
	<div class="ecport_excel">
		<button id="export_excel">EXPORT TO EXCEL</button>
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
	<table id="inventory_requisition_table">
		<tr id="table_heading">
			<th>Sr no.</th>
			<th>Action</th>
			<th>Status (Level Approval For)</th>
			<th>Requisition Type</th>
			<th>Item</th>
			<th>Priority</th>
			<th>Requisition By</th>
			<th>Date</th>
			<th>Attachment</th>
			<th>Approval Remarks</th>
		</tr>
		<tr class="even_row">
		    <td class="col2">1</td>
			<td class="col2"></td>
			<td class="col2"></td>
			<td class="col2"></td>
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
			<td class="col2_row51"></td>
			<td class="col2_row51"></td>
			<td class="col2_row51"></td>
			<td class="col12_row51"></td>
		</tr>
	</table>
	
	<%@ include file = "footer.jsp" %>
</body>
</html>