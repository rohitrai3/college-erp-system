<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Reports - Issue Book Histories</title>
<link href="./css/reports_issue_book_hostories.css" rel="stylesheet" type="text/css">
</head>
<body>
	<%@ include file = "header.jsp" %>
	
	
	
	<div class="content">
		
	</div>
	<div class="issue_book_histories">
		Issue Book Histories
	</div>
	<div class="library">
		<strong>Library :</strong>
	</div>
	<div class="library_select">
		<select name="library" id="library_year">
			<option value="all">All</option>
		</select>
	</div>
	<div class="status">
		<strong>Status :</strong>
	</div>
	<div class="status_input">
		<select name="status" id="status">
			<option value="all">All</option>
		</select>
	</div>
	<div class="search_input">
		<input type="text" name="search" id="search">
	</div>
	<div class="search_button">
		<button id="search_button">SEARCH</button>
	</div>
	<div class="export_excel">
		<button id="export_excel">EXPORT IN EXCEL</button>
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
	<table id="issue_book_histories_table">
		<tr id="table_heading">
			<th>Sr no.</th>
			<th>Status</th>
			<th>Accession No.</th>
			<th>Book Name</th>
			<th>Issue Date</th>
			<th>Due Date</th>
			<th>Return Date</th>
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