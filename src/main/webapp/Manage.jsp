<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="d" %>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">
	<style type="text/css">
			.maintab{
				height: 100vh;
				display: flex;
				justify-content: center;
				align-items: center;
			
		}
		.btns{
			background-color: orange;
			color: white;
			padding: 10px 15px;
			border: none;
		}
		.formtab{
				background-color: white;
				border-radius: 7px;
				box-shadow: 3px 3px 7px gray;
				padding: 15px 20px;
				width: 500px !important;
		}
		#mform{
			display: flex;
			flex-direction: column;
			width: 100%;
		}
		.inputs{
			margin-bottom: 10px;
			border: none;
			padding: 10px 10px;
			
			
		/* 	border-bottom: 1px solid navy; */
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
 <div class="container">
 		<div class="row justify-content-center rounded">
 			<div class="col-md-6">
 				
				<form action="addbook" method="post" id="mform" enctype="multipart/form-data" class="bg-white p-3 mt-3 shadow-lg p-3 mb-5 bg-secondary rounded">
				<h3 style="color:navy"> Add Book </h2>
				<label>Book Name</label>
				<input type="text" name="bookName" class="inputs bg-light" placeholder="Enter Book name...">
				
				<label>Aurther Name</label>
				<input type="text" name="aurtherName"  class="inputs bg-light" placeholder="Aurther  name...">
				
				<label>Description </label>
				<input type="text" name="description" class="inputs bg-light" placeholder="Enter Description here...">
				
				<label>Uploade image</label>
				<input type="file" name="bookImage" class="inputs bg-light">
				
				<label>Uploade Book pdf</label>
				<input type="file" name="bookPdf" class="inputs bg-light">
				
				<label>Price</label>
				<input type="text" name="price" class="inputs bg-light" placeholder="Enter price..." class="ins">
				
				<button type="submit" class="mt-3 btns">Submit</button>
			</form>	
 			</div>
 		</div>
 		
 </div>
	<%-- <div class="maintab">
		<div class="formtab">
				
		</div>
	</div> --%>
	
	
	
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