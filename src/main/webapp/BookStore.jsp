<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
 <!--<link rel="stylesheet" href="./css/index.css">  -->
 <script src="https://kit.fontawesome.com/b5f32de822.js" crossorigin="anonymous"></script>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">
		<style type="text/css">
			
				#forms2{
					margin-top: 100px;
				}
				#forms{
					border-radius: 0px 7px 7px 0px;
					box-shadow: 3px 3px 8px gray;
					
				}
				#bookslef{
					background-image: url('/images/libarary.jpg');
					background-size: cover;
					border-radius: 7px 0px 0px 7px;
					box-shadow: 3px 3px 8px gray;
					background-color: white;
				}
				#hyper{
					/* text-align: center; */
					margin-top: 10px;
				}
				.inputtab{
					border: none;
					padding: 10px 10px;
				}
/* 				.logo{	
						margin-right: 5px;
						color:red;
				}
		</style>
</head>
<body class="bg-light">
	
	<nav class="navbar navbar-expand-lg navbar-light bg-white">
		<a class="navbar-brand" href="BookStore.jsp"><i class="fa-solid fa-book-open-reader"></i> BookStore</a>
		<button class="navbar-toggler" type="button" data-toggle="collapse"
			data-target="#navbarSupportedContent"
			aria-controls="navbarSupportedContent" aria-expanded="false"
			aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>

		<div class="collapse navbar-collapse" id="navbarSupportedContent">
			<ul class="navbar-nav mr-auto">
				
			

				</li>
			</ul>
			<form class="form-inline my-2 my-lg-0">
				<input class="form-control mr-sm-2" type="search"
					placeholder="Search" aria-label="Search">
				<button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
				<a href="BookStore.jsp" style="margin-left: 20px"><button
						type="button" class="btn btn-primary"><i class="fa-solid fa-right-to-bracket" style="margin-right: 5px"></i>Login</button></a>
			</form>


		</div>
	</nav>
	<section>
		<div class="container" id="forms2">
			<div class="row">
				<div class="col-md-1"></div>
				
				<div class="col-md-5" id="bookslef" ></div>
				
				<div class="col-md-5 bg-white p-3" id="forms">
					<form action="login" method="post" class="p-3">
						<h1 style="color:navy">Login here</h1>
						<div class="form-group">
							<label for="exampleInputEmail1">Email address</label> <input
								type="email" name="email" class="form-control inputtab bg-light" id="exampleInputEmail1"
								aria-describedby="emailHelp" placeholder="Enter email">
							<small id="emailHelp" class="form-text text-muted">We'll
								never share your email with anyone else.</small>
						</div>
						<div class="form-group">
							<label for="exampleInputPassword1">Password</label> <input
								type="password"  name="password" class="form-control inputtab bg-light" id="exampleInputPassword1"
								placeholder="Password">
						</div>
						<!-- <div class="form-check">
							<input type="checkbox" class="form-check-input"
								id="exampleCheck1"> <label class="form-check-label"
								for="exampleCheck1">Check me out</label>
						</div> -->
						<button type="submit" class="btn btn-primary">Login</button>
						<div id="hyper">
								<a href="admin1.jsp" style="color:black">Do not have an account?<span style="color:orange"> Create a new account</span></a>
						</div>
						
					</form>
				</div>
				<div class="col-md-1"></div>
			</div>
			
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