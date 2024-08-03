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

<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">
	<style type="text/css">
		.rr{
			font-size: 13px;
				
		}
		
	</style>
</head>
<body class="bg-light">
		<nav class="navbar navbar-expand-lg navbar-light bg-white">
		<a class="navbar-brand" href="#">Open<span style="color:orange">Books</a>
		<button class="navbar-toggler" type="button" data-toggle="collapse"
			data-target="#navbarSupportedContent"
			aria-controls="navbarSupportedContent" aria-expanded="false"
			aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>

		<div class="collapse navbar-collapse" id="navbarSupportedContent">
			<ul class="navbar-nav mr-auto">
				<li class="nav-item active"><a class="nav-link"
					href="BookStore.jsp">Home <span class="sr-only">(current)</span>
				</a></li>
				<li class="nav-item "><a class="nav-link"
					href="AdminDashboard.jsp">AdminDashboard
				</a></li>
			
			</ul>



		</div>
	</nav>
	<div class="container-fluid">
			<div class="row  mt-5 ">
				<div class="col-12">
					<table class="table bg-white rr">
				<tr class="bg-dark text-white">
					<th>BookId</th>
					<th>BookName</th>
					<th>AurtherName</th>
					<th>Description</th>
					<th>imgUrl</th>
					<th>pdfUrl</th>
					<th>price</th>
					<!-- <th>edit</th> -->
					<th>delete</th>

				</tr>
				<d:forEach var="book" items="${bookdatafetch}">
					<tr>
						<td>${book.bookId}</td>
						<td>${book.bookName}</td>
						<td>${book.aurtherName}</td>
						<td>${book.description}</td>
						<td>${book.imgUrl}</td>
						<td>${book.pdfUrl}</td>
						<td>${book.price}</td>
						<%-- <td><a href="<d:url value='/${book.bookId}' />" class="btn px-2 bg-success text-white">edit</a></td> --%>
						<td><a href="<d:url value='delete/${book.bookId}' />" class="btn px-2 bg-danger text-white">delete</a></td>
					</tr>
				</d:forEach>
			</table>
				</div>
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