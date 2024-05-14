<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="d"%>
    <d:set var="ob" value="${foredit}" />
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
	<script src="https://kit.fontawesome.com/b5f32de822.js" crossorigin="anonymous"></script>
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
<body>
			
			<div class="maintab">
				<div class="formtab">
						<form action="/edit/${ob.bookId}" method="get" enctype="multipart/form-data" id="mform">
							<h3 style="color:navy">Edit Book Detials </h2>
					<label></label>
					<input type="hidden" name="bookId" class="bg-light inputs" value="${ob.bookId}">
					<label>Book name</label>
					<input type="text" name="bookName"  class="bg-light inputs" value="${ob.bookName}">
					<label>Aurther name</label>
					<input type="text" name="aurtherName" class="bg-light inputs"  value="${ob.aurtherName}">
					<label>description</label>
					<input type="text" name="description"  class="bg-light inputs" value="${ob.description}"> 
					<label>Image url</label>
					<input type="file" name="bookImage" class="bg-light inputs">
					<label>Pdf url</label>
					<input type="file" name="bookPdf" class="bg-light inputs">
					<label>Price</label>
					<input type="text" name="price"  class="bg-light inputs" value="${ob.price}">
					<button type="submit" class="btn btns">Update</button>
				</form>
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