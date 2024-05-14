<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
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
			<form action="UserAd" method="get" id="mform">
			<h3 style="color:navy"> Register Here </h2>
			
			<label>Name</label>
			<input type="text" name="fullname"  class="bg-light inputs" placeholder="Enter your name">
			<label>Email</label>
			<input type="email" name="email" class="bg-light inputs" placeholder="Enter your email" required="required">
			<label>Role</label>
			<input type="text" name="role"  class="bg-light inputs" placeholder="Enter your role"> 
			<label>Phone no</label> 
			<input type="text" name="phoneno" class="bg-light inputs"  placeholder="Enter your phone number">
			<label>Address</label>
			<input type="text" name="address" class="bg-light inputs" placeholder="Enter your address">
			<label>Password</label>
			<input type="password" name="password"  class="bg-light inputs" placeholder="Enter your password">
			<button type="submit" class="btn btns">Submit</button>
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