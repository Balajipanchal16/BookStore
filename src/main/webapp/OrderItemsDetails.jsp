<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="d"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<section>
		<div>
			<table class="table">
				<tr class="bg-dark text-white">
					<th>BookName</th>
					<th>price</th>
				</tr>
				<d:forEach var="orderItem" items="${order.getOrderItems()}">
					<tr>
						<td>${orderItem.getBook().getBookName()}</td>
						<td>${orderItem.getBook().getPrice()}</td>
					</tr>
				</d:forEach>
			</table>
		</div>
	</section>
</body>
</html>