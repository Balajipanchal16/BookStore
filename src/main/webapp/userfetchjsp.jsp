<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="d" %>
     <d:set var="user" value="${userdata}" />
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
	<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">
</head>
<body class="bg-light">
	
		<div class="container p-5">
		
			<table class="table">
				<tr class="bg-dark text-white">
					<th>Full name</th>
					<th>Email</th>
					<th>Role</th>
					<th>Phone Number</th>
					<th>Address</th>
					<th>Password</th>
					<!-- <th>edit</th> -->
					
				</tr>
				<d:forEach var="user" items="${fetchusers}">
				<tr>
					<td>${user.fullname}</td>
					<td>${user.email}</td>
					<td>${user.role}</td>
					<td>${user.phoneno}</td>
					<td>${user.address}</td>
					<td>${user.password}</td>
				<%-- 	<td><a href="<d:url value='/${user.id}' />" class="btn px-2 bg-success text-white">edit</a></td> --%>
					
				</tr>
				</d:forEach>
			</table>
		</div>
			<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
		integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js"
		integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
		crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js"
		integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
		crossorigin="anonymous"></script>
</body>
</html>