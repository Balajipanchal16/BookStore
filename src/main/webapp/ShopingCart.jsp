<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="d"%>
<d:set var="totalBooks" value="${totalBooks}" />
<d:set var="totalPrice" value="${totalPrice}" />
<d:set var="cartId" value="${cartId}" />
<d:set var="users" value="${users1}" />
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
.main2 {
	/* border: 5px solid black; */
	width: calc(100% - 100px);
	/* 	box-shadow: 3px 3px 8px gray; */
	padding: 30px 30px;
	margin-top: -20px;
}

.pricedetails {
	/* display: inline-block; */
	/* border: 1px solid gray; */
	padding: 10px 15px;
}

.twodiv {
	display: flex;
	flex-direction: row;
}

/* .abcs {
	
} */
.maintcont {
	display: flex;
	flex-direction: row;
	box-shadow: 3px 3px 7px gray;
	margin-bottom: 20px;
}

.cardsize {
	width: 200px;
	height: 200px;
	display: flex;
	justify-content: center;
	align-items: center;
}

.imagedata {
	padding: 30px 30px;
}

.bookimg {
	width: 150px;
	height: 150px;
	object-fit: contain;
	box-sizing: border-box;
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
		<!-- 	<form action="products">
				<button type="submit">Home</button>
			</form> -->
				<li class="nav-item active"><a class="nav-link" href="<d:url  value='/products?user=${users.getId()}'/>">Home
						<span class="sr-only">(current)</span>
				</a></li>
			</ul>
		</div>
	</nav>
	<!--  -->

	<!--  -->
	<div class="twodiv">
		<div class="main2">
			<div class="cartItemss">
				<d:forEach var="book" items="${books}">
					<div class="maintcont">
						<div class="card cardsize">
							<input type="hidden" name="bookId" value="${book.bookId}">
							<img src="<d:url value='/image/${book.bookId}' />"
								class="rounded float-left bookimg" alt="...">
							<%-- <img src="<d:url value='image/${book.bookId}' />"
								class="card-img-top" alt="Example Image" /> --%>
						</div>
						<div class="imagedata">
							<h5 class="card-title">Book name: ${book.bookName}</h5>
							<p class="card-text">Author name:${book.aurtherName}</p>
							<p class="card-text">Price:${book.price}</p>
							  <a href="<d:url value='/remove/${book.bookId}/${cartId}' />"
								class="btn btn-primary">remove</a>   
						</div>

					</div>
				</d:forEach>
			</div>


		</div>
		<div class="pricedetails">
			<div class="card" style="width: 18rem;">
				<div class="card-body">
					<h5 class="card-title">Details</h5>
					<p class="card-text">Total Quantity: ${totalBooks}</p>
					<p class="card-text">Total : ${totalPrice}</p>
					<a href="<d:url value='/order/${cartId}' />"><button
							class="btn bg-primary text-white">Buy Now</button></a>
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