<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
@import
	url("https://fonts.googleapis.com/css2?family=Montserrat:wght@300;400;800&family=Poppins:wght@300;400;500;600;700&display=swap")
	;

* {
	font-family: "Poppins", "sans-sarif";
	margin: 0;
	padding: 0;
	box-sizing: border-box;
}

.container {
	display: flex;
	justify-content: center;
	align-items: center;
	height: 100vh;
}

.dashboard {
	width: 500px;
	height: 500px;
	padding: 20px;
	border-radius: 10px;
	box-shadow: 3px 3px 8px gray;
}

.bts {
	color: white;
	background-color: navy;
	font-size: 20px;
	text-decoration: none;
}

#viewbook {
	border: none;
	/* padding: 10px 15px; */
}

#viewuser {
	border: none;
	/* padding: 10px 15px; */
}

.card {
	text-align: center;
}

.card-body {
	background-color: navy;
}

#plus {
	font-size: 20px;
	/* margin-right: 3px; */
}

#bookview {
	font-size: 20px;
	margin-right: 5px;
}

#btnss {
	background-color: navy;
	color: white;
	/* padding: 10px 15px; */
	border: none;
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


			</ul>



		</div>
	</nav>

	<div class="container">
		<div class="dashboard">
			<h3 style="text-align: center; color: navy">Admin Dashboard</h3>
			<div class="card p-2 m-3">
				<div class="card-body">
					<a href="Manage.jsp" class="bts"> <i class="fa-solid fa-plus"
						id="plus"></i> Add Book
					</a>
				</div>

			</div>
			<div class="card p-2 m-3">
				<div class="card-body">
					<form action="datafetchbook" method="get">
						<button type="submit" class="bts" id="viewbook">
							<i class="fa-solid fa-book-open-reader" id="bookview"></i>View
							Books
						</button>
					</form>
				</div>

			</div>
			<div class="card p-2 m-3">
				<div class="card-body">
					<form action="fetchusers">
						<button type="submit" class="bts" id="viewuser">
							<i class="fa-solid fa-user"></i> view User
						</button>
					</form>
				</div>

			</div>
			<div class="card p-2 m-3 ">
				<div class="card-body">
					<form action="pendingOrders">
						<button type="submit" id="btnss">
							<i class="fa-solid fa-hourglass-half"></i> Pending Order
						</button>
					</form>


					<%-- <a href="<d:url value='/pendingOrders' />" class="bts"><i class="fa-solid fa-hourglass-half"></i> Pending Order</a> --%>
				</div>
				<!-- <div class="card p-2 m-3 ">
					<div class="card-body">
						<a href="Manage.jsp" class="bts"><i class="fa-solid fa-chart-simple"></i> Order History</a>
					</div> -->

			</div>


		</div>
	</div>
	</div>
	  <c:if test="${not empty message}">
        <script>
            alert('${message}');
        </script>
    </c:if>
    
    <c:if test="${not empty error}">
        <script>
            alert('${error}');
        </script>
    </c:if>
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