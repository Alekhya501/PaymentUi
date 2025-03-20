<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>SecurePay - Home</title>
<style>
body {
	margin: 0;
	padding: 0;
	font-family: Arial, sans-serif;
	background: url('istockphoto-1459248097-1024x1024.jpg') no-repeat center
		center/cover;
	height: 100vh;
	display: flex;
	flex-direction: column;
	align-items: center;
	justify-content: center;
	color: white;
	text-align: center;
}

.header {
	font-size: 24px;
	font-weight: bold;
	background: black; /* Changed from gradient to black */
	padding: 15px;
	width: 100%;
	text-align: center;
	display: flex;
	justify-content: space-between;
	align-items: center;
	position: fixed;
	top: 0;
	left: 0;
	z-index: 1000;
}

.header span {
	margin-left: 20px;
	font-size: 28px;
}

.nav-buttons {
	margin-right: 20px;
}

.btn {
	padding: 10px 20px;
	font-size: 16px;
	border: none;
	border-radius: 6px;
	cursor: pointer;
	transition: 0.3s;
	margin-left: 10px;
	color: white;
}

.login {
	background-color: #28a745; /* Changed to green */
}

.login:hover {
	background-color: #218838;
}

.register {
	background-color: #ff5733;
}

.register:hover {
	background-color: #c70039;
}

.content {
	margin-top: 80px;
	background: linear-gradient(45deg, #6a11cb, #2575fc);

	padding: 30px;
	border-radius: 12px;
	box-shadow: 0px 4px 10px rgba(0, 0, 0, 0.5);
	max-width: 600px;
}

.content h1 {
	margin: 0;
	font-size: 32px;
}

.content p {
	font-size: 18px;
	color: #ddd;
}
</style>
</head>
<body>
	<div class="header">
		<span>SecurePay</span>
		<div class="nav-buttons">
			<a href="Login.jsp"><button class="btn login">Login</button></a>
			<a href="Registration.jsp"><button class="btn register">Register</button></a>
		</div>
	</div>
	<div class="content">
		<h1>Smart Payments for a smart world</h1>
		<p>
			<strong>Effortless Transaction AnyTime</strong>
		</p>
		<p>Fast-Safe-Seamless</p>
	</div>
</body>
</html>
