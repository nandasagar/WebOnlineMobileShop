<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>

<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">

<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<body>

	<!-- Sidebar -->
	<div class="w3-sidebar w3-bar-block w3-border-right w3-grey"
		style="display: none" id="mySidebar">
		<button onclick="w3_close()" class="w3-bar-item w3-large">Close
			&times;</button>
		<a href="/Admin/products"
			class="w3-bar-item w3-button w3-padding-24 w3-border-bottom w3-hover-green">Products</a>
		<a href="/Admin/ordersadmin"
			class="w3-bar-item w3-button w3-padding-24 w3-border-bottom w3-hover-green">Orders</a>
		<a href="/stocks"
			class="w3-bar-item w3-button w3-padding-24 w3-border-bottom w3-hover-green">Stocks</a>
		<a href="/Admin/adminlogout"
			class="w3-bar-item w3-button w3-padding-24 w3-border-bottom w3-hover-black">LogOut</a>
	</div>


	<!-- Page Content -->
	<div class="w3-teal">
		<button class="w3-button w3-teal w3-xlarge" onclick="w3_open()">Menu</button>
		<a type="button" class="btn btn-warning" style="float: right;"
			href="/adminlogin">Back</a>
		<div class="w3-container">
			<h1 align="center">Administrator</h1>
		</div>
	</div>

	<script>
		function w3_open() {
			document.getElementById("mySidebar").style.display = "block";
		}

		function w3_close() {
			document.getElementById("mySidebar").style.display = "none";
		}
	</script>

	<div class="container">
		<div class="starter-template">
			<h1>User List</h1>
			<table
				class="table table-striped table-hover table-condensed table-bordered"
				border="1">

				<tr>
					<th>ID</th>
					<th>Email</th>
					<th>Name</th>
					<th>Phone_Number</th>
					<th>Password</th>
					<th>Role_Name</th>
				</tr>
				<tbody>
					<c:forEach var="data" items="${users}">
						<tr>
							<td>${data.id}</td>
							<td>${data.email}</td>
							<td>${data.userName}</td>
							<td>${data.phoneNumber}</td>
							<td>${data.password}</td>
							<td>${data.rolename}</td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>
	</div>

</body>
</html>