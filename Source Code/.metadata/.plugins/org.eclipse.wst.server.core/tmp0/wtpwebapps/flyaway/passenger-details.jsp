<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="utf-8">
<meta name="viewreport" content="width=device-width, initial-scale=1.0">
<title>Traveller Details</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
	crossorigin="anonymous"></script>
<link
	href="https://fonts.googleapis.com/css?family=Raleway&display=swap"
	rel="stylesheet" />
<script src="https://kit.fontawesome.com/92e9dde9ec.js"
	crossorigin="anonymous"></script>
<style type="text/css">
body {
	margin: 0;
	padding: 0;
	background: #fff;
	font-family: 'Raleway', sans-serif;
	color: #fff;
	height: 100vh;
}

.banner .navbar {
	margin-top: 2%;
}

.banner .navbar-brand {
	color: #fff;
	font-size: 1.8em;
	font-weight: 700;
	margin-left: 7%;
}

.banner .nav {
	margin-right: 7%;
}

.banner .nav li a {
	color: #aaa;
	font-size: 1.5em;
}

.banner p {
	font-size: 2em;
	font-weight: 500;
	letter-spacing: 2px;
}

.booking {
	margin-left: 8%;
	margin-bottom: 2%;
	border-radius: 5px;
}
</style>
</head>

<body>
	<div class="container-fluid banner">
		<div class="row">
			<div class="col-md-12">
				<nav class="navbar navbar-md">
					<div class="navbar-brand text-dark">
						<a href="index.jsp" class="text-decoration-none text-dark"><i class="fas fa-plane"></i>FlyAway</a>
					</div>
					<ul class="nav">
						<li class="nav-item"><a class="nav-link text-dark" href="login.jsp"><i
								class="fas fa-user-cog"></i> Admin Login</a></li>
					</ul>
				</nav>
			</div>
			<div class="col-md-12">
				<h2 class="text-center text-dark">FlyAway Ticket Booking</h2>
			</div>
		</div>
	</div>
	<div class="row align-items-center" style="width: 100%;">
		<div class="col-md-2 bg-secondary booking">
			<p class="mt-3">Traveller details:</p>
			<form name="contact-form" action="">
				<div class="mb-3">
					<label for="name" class="col-form-label">Name:</label> <input
						type="text" class="form-control" id="name" required>
				</div>
				<div class="mb-3">
					<label for="email" class="col-form-label">Email:</label> <input
						type="text" class="form-control" id="email" required>
				</div>
				<div class="mb-3">
					<label for="phone" class="col-form-label">Phone:</label> <input
						type="number" class="form-control" id="phone" required>
				</div>
					<a href="checkout.jsp" class="btn btn-primary mb-3">Submit</a>					
			</form>
		</div>
		<div class="col-md-4">
			<img src="./assets/booking.svg" alt="">
		</div>
	</div>
</body>

</html>