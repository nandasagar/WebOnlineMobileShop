<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<!------ Include the above in your HEAD tag ---------->
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>login</title>
<link
	href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	rel="stylesheet" id="bootstrap-css">
<script
	src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<style>
body {
	font-family: "Lato", sans-serif;
}

.main-head {
	height: 150px;
	background: #FFF;
}

.sidenav {
	height: 100%;
	background-color: #000;
	overflow-x: hidden;
	padding-top: 20px;
}

.main {
	padding: 0px 10px;
}

@media screen and (max-height: 450px) {
	.sidenav {
		padding-top: 15px;
	}
}

@media screen and (max-width: 450px) {
	.login-form {
		margin-top: 10%;
	}
	.register-form {
		margin-top: 10%;
	}
}

@media screen and (min-width: 768px) {
	.main {
		margin-left: 40%;
	}
	.sidenav {
		width: 40%;
		position: fixed;
		z-index: 1;
		top: 0;
		left: 0;
	}
	.login-form {
		margin-top: 60%;
	}
	.register-form {
		margin-top: 20%;
	}
}

.login-main-text {
	margin-top: 20%;
	padding: 60px;
	color: #fff;
}

.login-main-text h2 {
	font-weight: 300;
}

.btn-black {
	background-color: #000 !important;
	color: #fff;
}
</style>
</head>
<body>
	<div class="sidenav">
		<div class="login-main-text">
			<h2>Online Mobile Shop Application</h2>
			<p>Login to buy your phone</p>
		</div>
	</div>
	<div class="main">
		<div class="col-md-6 col-sm-12">
			<div class="login-form">
				<form action="../../validateadmin" name="login" method="post">

					<div class="form-group">
						<label>Email</label> <input type="text" class="form-control"
							name="email" value="${user.email }" placeholder="email" />
					</div>
					<div class="form-group">
						<label>Password</label> <input type="password"
							class="form-control" name="password" value="${user.password }"
							placeholder="Password" />
					</div>
					<div class="form-group">
						<button type="submit" class="btn btn-black"  onclick="ValidateEmail(document.login.email)">Login</button>
					</div>
				</form>
			</div>
		</div>
	</div>
	
		<script >
	function ValidateEmail(inputText)
	{
	var mailformat = /^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9-]+(?:\.[a-zA-Z0-9-]+)*$/;
	if(inputText.value.match(mailformat))
	{
	document.form1.text1.focus();
	return true;
	}
	else
	{
	alert("You have entered an invalid email address!");
	document.form1.text1.focus();
	return false;
	}
	}

	</script>
</body>
</html>