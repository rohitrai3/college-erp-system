<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Alerts / Approval - Inventory PO Approval</title>
<link href="./css/alerts_inventory_po_approval.css" rel="stylesheet" type="text/css">
</head>
<body>
	<%@ include file = "header.jsp" %>
	
	
	
	<div class="purchase_order">
		Purchase Order
	</div>
	<div class="content">
		
	</div>
	<div class="search_input">
		<input type="text" name="search" id="search">
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
	<table id="purchase_order_table">
		<tr id="table_heading">
			<th>Sr no.</th>
			<th>Details</th>
			<th>Status</th>
			<th>Purchase Order No.</th>
			<th>Purchase Order By</th>
			<th>Date</th>
			<th>Amount</th>
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