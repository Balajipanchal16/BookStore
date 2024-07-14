<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="d"%>
<d:set var="ob" value="${user}" />

<%-- <d:set var="ob" value="${user}" />
<d:set var="totalBook" value="${cartBooks}" />
<d:set var="totalPrice" value="${totalPrice}" />
<d:set var="cartId" value="${cartId}" />
<d:set var="cartMessage" value="${cartMessage}" /> --%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<style type="text/css">
	
.maindiv {
	padding: 20px 20px;
	height: 100vh;
	display: flex;
	justify-content:center;
	 align-items: center; 
	background-color: whitesmoke;
}

.btss {
	padding: 10px 15px;
	color: white;
	background-color: blue;
	text-decoration: none;
	border-radius: 7px;
}
	.innerdiv{
		width: 300px;
		box-shadow: 4px 4px 8px gray;
		padding: 30px 30px;
		border-radius: 10px;
		border-top: 5px solid navy;
		color:gray;
	}
</style>
<script src="https://kit.fontawesome.com/b5f32de822.js"
	crossorigin="anonymous"></script>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">
<body>
		<nav class="navbar navbar-expand-lg navbar-light bg-white">
		<a class="navbar-brand" href="#">BookStore</a>
		<button class="navbar-toggler" type="button" data-toggle="collapse"
			data-target="#navbarSupportedContent"
			aria-controls="navbarSupportedContent" aria-expanded="false"
			aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>

		<div class="collapse navbar-collapse" id="navbarSupportedContent">
			<ul class="navbar-nav mr-auto">
				<li class="nav-item active"><a class="nav-link" href="<d:url  value='/products?user=${ob.getId()}'/>">Home
						<span class="sr-only">(current)</span>
				</a></li>
				<li class="nav-item"><a class="nav-link"
					href="/userBooks/${ob.id}">MyBooks</a></li>
			</ul>
			

		</div>
	</nav>
	<div class="maindiv">
		<div class="innerdiv">
			<p>Name: ${ob.getFullname()}</p>
			<p>Email: ${ob.getEmail()}</p>
			<p>Phone Number: ${ob.getPhoneno()}</p>
			<p>Email: ${ob.getAddress()}</p>
			<td><a href="<d:url value='/ViewDetailsUser/${ob.id}' />"
				class="btn px-2 bg-success text-white btss">Edit Personal
					Details </a></td>
		</div>


	</div>
	<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
		integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js"
		integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js"
		integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
		crossorigin="anonymous"></script>

</body>
</html>