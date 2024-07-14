<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="d"%>
<d:set var="ob" value="${user}" />
<d:set var="totalBook" value="${cartBooks}" />
<d:set var="totalPrice" value="${totalPrice}" />
<d:set var="cartId" value="${cartId}" />
<d:set var="cartMessage" value="${cartMessage}" />
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
* {
	box-sizing: border-box;
}

body {
	background-color: whitesmoke;
}

.bookImage {
	width: 150px;
	height: 150px;
	object-fit: contain;
	box-sizing: border-box;
}

.info {
	text-align: center;
	/* border: 1px solid black; */
	background-color: whitesmoke;
	box-shadow: 3px 3px 8px gray;
}

.indd {
	margin-top: 30px;
	margin-bottom: 50px;
}

.footerbody {
	display: flex;
	justify-content: space-between;
}

.footerbody p {
	text-transform: capitalize;
}

#viewbtn {
	background-color: navy;
	color: white;
	padding: 5px 15px;
	display: inline-block;
	width: 100%;
	text-decoration: none;
	border-radius: 7px;
}

#viewbtn:hover {
	background-color: blue;
	color: white;
}

.card {
	border-radius: 5px;
	box-shadow: 3px 4px 7px gray;
	width: 200px;
	height: 200px;
	/* border: 1px solid black;  */
	box-sizing: border-box;
	/* margin-bottom: 30px; */
}

.buttonss {
	display: flex;
	flex-direction: column;
}

.buttonss a button {
	width: 100%;
}

.badge {
	font-size: 10px;
}
</style>
</head>
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
				<li class="nav-item active"><a class="nav-link" href="#">Home
						<span class="sr-only">(current)</span>
				</a></li>
				<li class="nav-item"><a class="nav-link"
					href="/userBooks/${ob.id}">MyBooks</a></li>
			</ul>
			<form class="form-inline my-2 my-lg-0">

				<a href="<d:url  value='cart/${ob.id}'/>" style="margin-left: 20px"
					type="button" class="btn btn-primary"> <i
					class="fa-solid fa-cart-shopping"></i> <sup><span
						class="badge badge-pill badge-warning mb-n3 ">${totalBook}</span></sup>
				</a> <a href="<d:url  value='/userProfile/${ob.id}'/>"
					style="margin-left: 20px" type="button" class="btn btn-primary">
					<i class="fa-solid fa-user"></i>
				</a>
			</form>

		</div>
	</nav>
	<c:if test="${not empty cartMessage}">
		<div class="alert alert-warning" id="cartAlertMsg" role="alert">${cartMessage}
		</div>
	</c:if>

	<div class="container">

		<div class="row m-5">

			<d:forEach var="book" items="${books}">
				<div class="col-md-3 indd">

					<div class="card m-2 cards">
						<div class="card-body">
							<input type="hidden" name="bookId" value="${book.bookId}">
							<img src="<d:url value='image/${book.bookId}' />"
								class="bookImage" alt="Example Image" />

						</div>

						<div class="card-footer info">
							<div class="footerbody">
								<p>${book.bookName}</p>
								<p>${book.price}</p>

							</div>
							<div>
								<%-- <a href="<d:url   value='viewDatails/${book.bookId}'/>"
										id="viewbtn">View details</a> --%>

								<a href="<d:url  value='addToCart/${book.bookId}/${ob.id}'/>"
									id="viewbtn">Add to Cart</a>

								<%--  <button id="toggleButton">Toggle IFrame</button> 
								 <iframe id="myIframe" src="/pdf/${book.bookId}"  frameborder="0" scrolling="no" allowfullscreen></iframe> --%>
								<%-- 	<a href="<d:url  value='/pdf/${book.bookId}'/>"
									id="viewbtn" target="_blank">View book</a>  --%>
								<%-- <c:url var="viewUrl" value="/viewDocument.jsp" />
								<a href="<c:url value="/pdf/${bookId}"/>"
									target="_blank">View Document</a> --%>

								<%-- <a href="<d:url   value='viewDatails/${book.bookId}'/>"
										id="viewbtn">View details</a> --%>
							</div>
							<%-- <div class="buttonss">
								<div style="margin-bottom:20px;">
									<a href="<d:url   value='viewDatails/${book.bookId}'/>"
										id="viewbtn">View details</a>
								</div>
								<div>
									<a href="<d:url  value='addToCart/${book.bookId}'/>"
										id="viewbtn">Add to Cart</a>
								</div>
							</div> --%>


						</div>
					</div>

					<%-- <th>${book.aurtherName}</th>
					<th>${book.description}</th>
					<th>${book.imgUrl}</th> --%>


					<%-- <td><a href="<d:url value='delete/${book.bookId}' />">delete</a></td> --%>

				</div>
			</d:forEach>

		</div>
	</div>
	<!-- <script>
    // Get references to the button and iframe elements
    var toggleButton = document.getElementById('toggleButton');
    var myIframe = document.getElementById('myIframe');

    // Add a click event listener to the button
    toggleButton.addEventListener('click', function() {
        // Toggle the visibility of the iframe
        if (myIframe.style.display === 'none') {
            myIframe.style.display = 'block';
            // Set the iframe src when it becomes visible (if needed)
            myIframe.src = 'viewDocument.jsp'; // Replace with your URL
        } else {
            myIframe.style.display = 'none';
        }
    });
</script> -->
	<!-- <script type="text/javascript">
		var alertMsg=document.getElementById("cartAlertMsg");
		alertMsg.style.display="none";
	</script> -->
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