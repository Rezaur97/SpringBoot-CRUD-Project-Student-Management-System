<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Update</title>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.1.3/dist/css/bootstrap.min.css"
	integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO"
	crossorigin="anonymous">
</head>
<body>

	<div class="m-3">
		<h1 class="text-center">Update Student Data</h1>

		<form action="updateOneStudent" method="post">
			<input type="HIDDEN" name="id" value="${student.id}" />
			<div class="form-group">
				<label for="name">Name</label> <input type="text"
					class="form-control" id="name" name="name" value="${student.name}"
					aria-describedby="emailHelp" placeholder="Enter Name">
			</div>
			<div class="form-group">
				<label for="email">Email</label> <input type="email" name="email"
					class="form-control" value="${student.email}" id="email"
					aria-describedby="emailHelp" placeholder="Enter email">
			</div>
			<div class="form-group">
				<label for="address">Address</label> <input name="address"
					type="text" value="${student.address}" class="form-control"
					id="address" placeholder="Enter Address">
			</div>
			<div class="form-group">
				<label for="mobile">Mobile No.</label> <input type="text"
					name="mobile" value="${student.mobile}" class="form-control"
					id="mobile" placeholder="Enter Mobile No.">
			</div>
			<button type="submit" class="btn btn-primary" value="UPDATE">UPDATE</button>
		</form>
	</div>
</body>
</html>