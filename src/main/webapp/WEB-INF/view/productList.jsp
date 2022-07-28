<%@page import="com.jbk.ProductManagement_MVC.entity.Product"%>
<%@page import="java.util.List"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<html>
<head>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.1.3/dist/css/bootstrap.min.css"
	integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO"
	crossorigin="anonymous">

<title>Product List</title>
</head>
<body>
	<table class="table" style="margin-top: 5px">
		<thead class="thead-dark">
			<tr>
				<th scope="col">PRODUCT ID</th>
				<th scope="col">PRODUCT NAME</th>
				<th scope="col">PRODUCT PRICE</th>
				<th scope="col">PRODUCT EXPIRY DATE</th>
				<th scope="col">ACTION</th>
			</tr>
		</thead>
		<tbody style="margin-top: 5px">

			<c:forEach items="${products}" var="product">

				<tr>
					<td><c:out value="${product.productid}"></c:out></td>
					<td><c:out value="${product.productname}"></c:out></td>
					<td><c:out value="${product.productprice}"></c:out></td>
					<td><c:out value="${product.productexpiry}"></c:out></td>
					<td><a href="">EDIT</a>/<a>DELETE</a></td>
				</tr>

			</c:forEach>

		</tbody>
	</table>


</body>
</html>