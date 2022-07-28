
<%@page import="com.jbk.ProductManagement_MVC.entity.User"%>
<%@page import="java.util.List"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<html>
<head>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.1.3/dist/css/bootstrap.min.css"
	integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO"
	crossorigin="anonymous">

<title>User List</title>
</head>
<body>
	<table class="table" style="margin-top: 5px">
		<thead class="thead-dark">
			<tr>
				<th scope="col">USERNAME</th>
				<th scope="col">PASSWORD</th>
				<th scope="col">GENDER</th>
				<th scope="col">ROLE</th>
				<th scope="col">QUESTION</th>
				<th scope="col">ANSWER</th>
				<th scope="col">ACTION</th>
			</tr>
		</thead>
		<tbody style="margin-top: 5px">

			<c:forEach items="${users}" var="user">

				<tr>
					<td><c:out value="${user.username}"></c:out></td>
					<td><c:out value="${user.password}"></c:out></td>
					<td><c:out value="${user.gender}"></c:out></td>
					<td><c:out value="${user.role}"></c:out></td>
					<td><c:out value="${user.question}"></c:out></td>
					<td><c:out value="${user.answer}"></c:out></td>
					<td><a href="profile?username=${user.username}">EDIT</a>/<a>DELETE</a></td>
				</tr>

			</c:forEach>

		</tbody>
	</table>


</body>
</html>