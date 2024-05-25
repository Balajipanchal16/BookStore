<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="d"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<script src="https://kit.fontawesome.com/b5f32de822.js"
	crossorigin="anonymous"></script>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">
<style type="text/css">
/* *{
			padding: 0;
			margin: 0;
			box-sizing: border-box;
		} */
.head {
	height: 100px;
}

.container12 {
	/* 	border:1px solid black; */
	/* width:100vw; */
	display: flex;
	justify-content: center;
	align-items: center;
	overflow: auto;
}

.container1 {
	/* padding:50px 50px; */
	border-radius: 10px;
	box-shadow: 4px 5px 7px gray;
}

.table {
	width: 500px !important;
	height: 500px !important;
	font-size: 13px;
}
</style>
</head>
<body class="bg-light">
	<header class="head">
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
					<li class="nav-item active"><a class="nav-link" href="#">Home
							<span class="sr-only">(current)</span>
					</a></li>
					<li class="nav-item"><a class="nav-link" href="#">Link</a></li>
					<li class="nav-item dropdown"><a
						class="nav-link dropdown-toggle" href="#" id="navbarDropdown"
						role="button" data-toggle="dropdown" aria-haspopup="true"
						aria-expanded="false"> Dropdown </a>
						<div class="dropdown-menu" aria-labelledby="navbarDropdown">
							<a class="dropdown-item" href="#">Action</a> <a
								class="dropdown-item" href="#">Another action</a>
							<div class="dropdown-divider"></div>
							<a class="dropdown-item" href="#">Something else here</a>
						</div></li>

					</li>
				</ul>
				<form class="form-inline my-2 my-lg-0">
					<input class="form-control mr-sm-2" type="search"
						placeholder="Search" aria-label="Search">
					<button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
					<a href="BookStore.jsp" style="margin-left: 20px"><button
							type="button" class="btn btn-primary">
							<i class="fa-solid fa-right-to-bracket" style="margin-right: 5px"></i>Login
						</button></a>
				</form>


			</div>
		</nav>
	</header>

	<section class="container12">

		<div class="container1">
			<table class="table tablemodif">
				<tr class="bg-dark text-white">
					<th>Order ID</th>
					<th>Order Date</th>
					<th>User Name</th>
					<th>Order Items</th>
					<th>Approve</th>
					

				</tr>
				<d:forEach var="order" items="${orders}">
					<tr>
						<td>${order.getOrderId()}</td>
						<td>${order.getOrderedDate()}</td>
						<td>${order.getUser().getFullname()}</td>
						<td><a href="OrderItemsDetails.jsp">Order Item</a></td>
						<td>
						<d:choose>
							<d:when test="${order.getStatus() ne 'Approved'}">
								<a
							href="<d:url value='/approveOrder/${order.getOrderId()} ' />">Approve</a>
							</d:when>
							<d:otherwise>
								<p>Approved</p>
							</d:otherwise>
						</d:choose>
						</td>
						

					</tr>
				</d:forEach>
			</table>
		</div>
	</section>
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