<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewreport" content="width=device-width, initial-scale=1.0">
<title>Admin Login</title>
<link rel="stylesheet" type="text/css" href="./assets/index.css" />
<link rel="stylesheet" type="text/css"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" />
	    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-/bQdsTh/da6pkI1MST/rWKFNjaCP5gBSY4sEBT38Q/9RBh9AH40zEOg7Hlq2THRZ"
        crossorigin="anonymous"></script>
<link
	href="https://fonts.googleapis.com/css?family=Raleway&display=swap"
	rel="stylesheet" />
<script src="https://kit.fontawesome.com/92e9dde9ec.js"
	crossorigin="anonymous"></script>
<style>
body {
	margin: 0;
	padding: 0;
	background: #fff;
	font-family: 'Raleway', sans-serif;
	color: #fff;
	height: 100vh;
	width: 100%;
	background: url('./assets/aeroplane.svg');
	background-position: right;
	background-attachment: fixed;
	background-repeat: no-repeat;
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

.login {
	margin-left: 50%;
	margin-top: 40%;
}
</style>
</head>
<body>
<body>
	<div class="container-fluid banner">
		<div class="row">
			<div class="col-md-12">
				<nav class="navbar navbar-md">
					<div class="navbar-brand text-dark">
						<a href="index.jsp" class="text-decoration-none text-dark"><i
							class="fas fa-plane"></i>FlyAway</a>
					</div>
					<ul class="nav">
						<li class="nav-item"><a class="nav-link text-dark" href="login.jsp"><i
								class="fas fa-user-cog"></i> Admin Login</a></li>
					</ul>
				</nav>
			</div>
			<div class="col-md-12">
				<h2 class="text-center text-dark">Login</h2>
			</div>
			<div class="row">
				<div class="col-md-12 bg-secondary login">
					<form name="contact-form" action="ValidateUser" method="POST">
						<div class="mb-3">
							<label for="email" class="col-form-label">Email:</label> <input
								type="text" class="form-control" id="email" name="email"
								required>
						</div>
						<div class="mb-3">
							<label for="name" class="col-form-label">Password:</label> <input
								type="password" class="form-control" id="password"
								name="password" required>
						</div>
						<input class="btn btn-primary mb-3" type="submit" value="Login">
						<button type="button" class="btn btn-info mb-3" data-bs-toggle="modal"
                            data-bs-target="#register">Register</button>
					</form>	
				</div>
			</div>
		</div>
	</div>
	
	 <div class="modal fade" id="register" tabindex="-1">
        <div class="modal-dialog text-dark">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="enrollLabel">Register</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body">
                    <form action="RegisterUser" method="POST">
						<div class="mb-3">
							<label for="email" class="col-form-label">Email:</label> <input
								type="text" class="form-control" id="email" name="email"
								required>
						</div>
						<div class="mb-3">
							<label for="name" class="col-form-label">Password:</label> <input
								type="password" class="form-control" id="password"
								name="password" required>
						</div>
						<input class="btn btn-primary mb-3" type="submit" value="Register">
                    </form>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                </div>
            </div>
        </div>
    </div>

</body>
</html>