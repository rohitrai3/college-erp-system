<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Communications - Compose</title>
<link href="./css/communication_compose.css" rel="stylesheet" type="text/css">
</head>
<body>
	<%@ include file = "header.jsp" %>
	
	
	
	<div class="compose">
		Compose
	</div>
	<div class="content">
		
	</div>
	<div class="new_communication">
		<strong>New Communication</strong>
	</div>
	<div class="organisation">
		<strong>Organisation :</strong>
	</div>
	<div class="org_select">
		<select name="org" id="org">
			<option value="bsaitm">BSAITM</option>
		</select>
	</div>
	<div class="comm_to">
		<strong>Communication To :</strong>
	</div>
	<div class="comm_to_select">
		<select name="comm_to" id="comm_to">
			<option value="none">--Select Communication To--</option>
		</select>
	</div>
	<div class="comm_type">
		<strong>Communication Type :</strong>
	</div>
	<div class="comm_type_select">
		<select name="comm_type" id="comm_type">
			<option value="all">--Communication Type--</option>
		</select>
	</div>
	<div class="subject">
		<strong>Subject :</strong>
	</div>
	<div class="subject_input">
		<input type="text" name="date" id="date">
	</div>
	<div class="message">
		<strong>Message :</strong>
	</div>
	<div class="message_area">
		<textarea name="message" id="message"></textarea>
	</div>
<div class="send">
		<button id="send">SEND</button>
	</div>
	
	<%@ include file = "footer.jsp" %>
</body>
</html>