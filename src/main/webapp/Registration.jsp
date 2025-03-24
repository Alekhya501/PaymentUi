<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Register</title>
<style>
* {
	margin: 0;
	padding: 0;
	box-sizing: border-box;
	font-family: Arial, sans-serif;
}

body {
	display: flex;
	justify-content: center;
	align-items: center;
	height: 100vh;
	background-color: #f4f4f4;
}

.container {
	background: white;
	padding: 20px;
	border-radius: 10px;
	box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
	width: 100%;
	max-width: 400px;
}

h2 {
	text-align: center;
	margin-bottom: 20px;
}

.input-group {
	margin-bottom: 15px;
}

.input-group label {
	display: block;
	font-weight: bold;
	margin-bottom: 5px;
}

.input-group input {
	width: 100%;
	padding: 10px;
	border: 1px solid #ccc;
	border-radius: 5px;
}

.btn {
	width: 100%;
	padding: 10px;
	background: #28a745;
	color: white;
	border: none;
	border-radius: 5px;
	cursor: pointer;
	font-size: 16px;
}

.btn:hover {
	background: #218838;
}

.login-link {
	text-align: center;
	margin-top: 10px;
}

.login-link a {
	color: #007bff;
	text-decoration: none;
}

.login-link a:hover {
	text-decoration: underline;
}

</style>
</head>
<body>

	<div class="container">
		<h2>Registration</h2>
		<form action="Registration" method="POST">
		<div class="input-group">
				<label for="userid">User id</label> <input type="text"
					id="userid" name="userid" required>
			</div>
			<div class="input-group">
				<label for="userName">User Name</label> <input type="text"
					id="userName" name="userName" required>
			</div>
			<div class="input-group">
				<label for="password">Password</label> <input type="password"
					id="password" name="password" required>
			</div>
			<div class="input-group">
				<label for="firstName">First Name</label> <input type="text"
					id="firstName" name="firstName" required>
			</div>
			<div class="input-group">
				<label for="lastName">Last Name</label> <input type="text"
					id="lastName" name="lastName" required>
			</div>
			<div class="input-group">
				<label for="phone">Phone Number</label> <input type="tel" id="phone"
					name="phone" required>
			</div>
			<div class="input-group">
				<label for="email">Email</label> <input type="email" id="email"
					name="email" required>
			</div>
			<div class="input-group">
				<label for="address">Address</label> <input type="text" id="address"
					name="address" required>
			</div>
			<button type="submit" class="btn">Register</button>
		</form>
		<div class="login-link">
			Already have an account? <a href="Login.jsp">Login here</a>
		</div>
	</div>

</body>
</html>