<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Create Lead</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">

</head>
<body>

	<form class="row g-3" action="savelead" method="post">
		<div class="col-md-6">
			<label for="firstname" class="form-label">First Name</label> <input
				type="text" class="form-control" id="firstname">
		</div>
		<div class="col-md-6">
			<label for="lastname" class="form-label">Last Name</label> <input
				type="text" class="form-control" id="lastname">
		</div>
		<div class="col-12">
			<label for="inputAddress" class="form-label">Address</label> <input
				type="text" class="form-control" id="inputAddress"
				placeholder="1234 Main St">
		</div>
		
		<div class="col-md-6">
			<label for="email" class="form-label">Email</label> <input
				type="email" class="form-control" id="email">
		</div>
		
		<div class="col-md-6">
			<label for="mobile" class="form-label">Mobile No.</label> <input
				type="text" class="form-control" id="mobile">
		</div>
		<div class="col-12">
			<button type="submit" class="btn btn-primary">Create</button>
		</div>
	</form>

</body>
</html>