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

.cards {
	display: flex;
	justify-content: center;
	align-items: center;
	background-color: white;
	padding: 10px 10px !important;
	
}
.cardss{
	height: 300px;
	margin-bottom: 30px;
	width: 200px;
}
.indd{
	/* border: 1px solid black;  */
}
.fott{
	height:140px;
	display: flex;
	flex-direction: column;
}
.tss{
	font-size: 14px;
}
.TT{
	font-size: 11px;
}

</style>
</head>
<body>
	<div class="container">
		<div class="row m-5 indd">
			<d:forEach var="book" items="${purchasedBooks}">
				<div class="col-md-3">
					<div class="card cardss">
						<div class="card-body p-1 cards">
							<img class="card-img-top bookImage"
								src="<d:url value='/image/${book.bookId}'/>"
								alt="Card image cap">
						</div>
						<div class="card-footer fott">
							<h5 class="card-title tss">Book name: ${book.getBookName()}</h5>
							<p class="card-text tss TT">Aurther name: ${book.getAurtherName()}</p>
							<a href="<d:url  value='/pdf/${book.bookId}'/>"
									id="viewbtn" target="_blank">View book</a> 
						</div>
					</div>

				</div>
				</d:forEach>
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