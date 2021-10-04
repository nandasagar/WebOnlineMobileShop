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
		<a href="/Admin/users"
			class="w3-bar-item w3-button w3-padding-24 w3-border-bottom w3-hover-green">Users</a>
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
			<h1>Order List</h1>
			<table
				class="table table-striped table-hover table-condensed table-bordered"
				border="1">

				<tr>
					<th>Payment Id</th>
					<th>FullName</th>
					<th>Email</th>
					<th>Address</th>
					<th>ItemName</th>
					<th>Image</th>
					<th>ModeOfPayment</th>
					<th>Total</th>
					<th>City</th>
				</tr>
				<tbody>
					<c:forEach var="order" items="${orders}">
						<tr>
							<td>${order.paymentid}</td>
							<td>${order.fullname}</td>
							<td>${order.email}</td>
							<td>${order.address}</td>
							<td>${order.itemname}</td>
							<td><img src="/Images/${order.itemname}.jpg" alt="NoImg"
								border=3 height=100 width=100 /></td>
							<td>${order.modeofpayment}</td>
							<td>${order.total}</td>
							<td>${order.city}</td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>
	</div>

</body>
</html>