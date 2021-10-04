<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<!------ Include the above in your HEAD tag ---------->
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Registration</title>
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
		margin-top: 30%;
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
	<form action="/save-user" name="register" method="post">
		<div class="sidenav">
			<div class="login-main-text">
				<h2>
					Application<br> Register Page
				</h2>
				<p>Register to Shop Your favourite Mobile Phone</p>
			</div>
		</div>
		<div class="main">
			<div class="col-md-6 col-sm-12">
				<div class="login-form">
					<div class="form-group">
						<label>Email</label> <input type="hidden" value="*{id}" /> <input
							type="text" class="form-control" name="email"
							value="${user.email }" placeholder="email" />
					</div>
					<div class="form-group">
						<label for="Role Name"> Choose your Role</label> <select
							name="rolename" id="rolename">
							<option value="User">User</option>
						</select> <br>
						<br>
					</div>
					<div class="form-group">
						<label>User Name</label> <input type="text" class="form-control"
							name="userName" value="${user.userName }" placeholder="name" />
					</div>
					<div class="form-group">
						<label>Phone</label> <input type="text" class="form-control"
							name="phoneNumber" value="${user.phoneNumber }"
							placeholder="phone" />
					</div>

					<div class="form-group">
						<label>Password</label> <input type="text" class="form-control"
							name="password" value="${user.password }" placeholder="password" />
					</div>
						<button type="submit" class="btn btn-black"  onclick="ValidateEmail(document.register.email)">Register</button>
					</div>
			</div>
		</div>
	</form>
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
		alert("invalid email address! or Email Address already Taken ");
	document.form1.text1.focus();
	return false;
	}
	}

	</script>

</body>
</html>