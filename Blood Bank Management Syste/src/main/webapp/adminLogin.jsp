<!DOCTYPE html>
<html lang="en">
<head>
<link rel="stylesheet" href="style.css" type="text/css" media="screen">
<style>
input[type="text"], input[type="password"], input[type="submit"] {
	border: none;
	background: silver;
	height: 50px;
	font-size: 16px;
	margin-left: 35%;
	padding: 15px;
	width: 33%;
	border-radius: 25px;
}

h1 {
	color :red;
	margin-right:200px;
}

.active {
	border-radius: 25px;
	background-color: green;
	color: cyan;
}

.button {
	border-radius: 25px;
	background-color: green;
	color: cyan;
	margin-top: 30px;
}

body {
	background-color: #72c5ea;
}
</style>
</head>
<body>
	<div class="header">
		<a href="#default" class="logo"><img class="logo" src="Logo1.png"></a>
		<h1><b><i><u>Admin Login...</u></i></b></h1>
		<div class="header-right">
			<a href="index.jsp">Home</a> <a class="active" href="adminLogin.jsp">Admin
				Login</a>
		</div>
	</div>

	<div class="container">
		<br> <br>

		<%
		String msg = request.getParameter("msg");
		if ("invalid".equals(msg)) {
		%>
		<center>
			<font color="red" size="5">Invalid Username or Password</font>
		</center>
		<%
		}
		%>
		<form action="adminLoginAction.jsp" method="post">
			<div class="form-group">
				<center>
					<h2>Username</h2>
				</center>
				<input type="text" placeholder="Enter Username" name="username"
					required>
				<center>
					<h2>Password</h2>
				</center>
				<input type="password" placeholder="Enter Password" name="password"
					required>
				<center>
					<button type="submit" class="button">Submit</button>
				</center>
		</form>

	</div>
	<br>
	<br>
	<br>
	<br>
	<h3>
		<center>Created By Surjya:CUTM:2022</center>
	</h3>
</body>
</html>
