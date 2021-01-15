<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>New Registration</title>

<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

</head>
<body>
<div class="container">
<h1 align="center" class="text-primary">Create Account</h1>
</div>
	<div class="container">
		<div class="card bg-light">
			<div class="card-body mx-auto">

				<form action="saveReg" class="was-validated" method="get">
					<div class="form-group">
						<label for="fname">FirstName:</label> <input type="text"
							class="form-control" id="lname" placeholder="Enter Firstname"
							name="fname">
						
					</div>
					<div class="form-group">
						<label for="lname">LastName:</label> <input type="text"
							class="form-control" id="lname" placeholder="Enter lastname"
							name="lastName">

					</div>
					<div class="form-group">
						<label for="email">Email:</label> <input type="email"
							class="form-control" id="email" placeholder="Enter email"
							name="email">

					</div>
					<div class="form-group">
						<label for="pwd">Password:</label> <input type="password"
							class="form-control" id="pwd" placeholder="Enter password"
							name="password">

					</div>
					<div class="form-group form-check">
						<label class="form-check-label"> <input
							class="form-check-input" type="checkbox" name="remember">
							I agree on term & conditions.
							<div class="valid-feedback">Valid.</div>
							<div class="invalid-feedback">Check this checkbox to
								continue.</div>
						</label>
					</div>
					<button type="submit" class="btn btn-primary" name="save">Submit</button>
				</form>
			</div>
		</div>
	</div>
</body>
</html>