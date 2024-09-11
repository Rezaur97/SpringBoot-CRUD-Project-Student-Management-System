<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Student Details</title>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.1.3/dist/css/bootstrap.min.css"
	integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO"
	crossorigin="anonymous">
</head>
<body>
	<h1 class="text-center m-3">Details of all students</h1>

	<div class="m-3">
		<table class="table table-striped">
			<thead>
				<tr>
					<th scope="col">Name of Student</th>
					<th scope="col">Address</th>
					<th scope="col">Email</th>
					<th scope="col">Mobile</th>
					<th scope="col">Delete Student Data</th>
					<th scope="col">Update Student Data</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${students}" var="std">
					<tr>
						<td>${std.name}</td>
						<td>${std.address}</td>
						<td>${std.email}</td>
						<td>${std.mobile}</td>
						<td><a href="delete?id=${std.id}">Delete</a></td>
						<td><a href="update?id=${std.id}">Update</a></td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
</body>
</html>
<%@ include file="menubar.jsp"%>