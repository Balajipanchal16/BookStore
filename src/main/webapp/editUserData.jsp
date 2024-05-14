<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="d"%>
<d:set var="ob" value="${user}" />
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
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
<body>
	<div class="maintab">
		<div class="formtab">
			<form action="/edit/${ob.id}" method="get"
				enctype="multipart/form-data" id="mform">
				<label></label> <input type="hidden" class="bg-light inputs" name="bookId"
					value="${ob.bookId}">
				 <label>User name</label> <input type="text"
					name="fullname"  class="bg-light inputs" value="${ob.fullname}">
				 <label>email</label> <input type="text" name="email" class="bg-light inputs"
					value="${ob.email}"> <label>Phone
					No</label> <input type="text" name="phoneno" value="${ob.phoneno}">
				 <label>address</label> <input type="text" name="address"
					 class="bg-light inputs" value="${ob.address}"> <label>Pdf
					url</label> <input type="text" name="password"  class="bg-light inputs" value="${ob.password}"><br>
				<button type="submit">Update</button>
			</form>
		</div>
	</div>


</body>
</html>