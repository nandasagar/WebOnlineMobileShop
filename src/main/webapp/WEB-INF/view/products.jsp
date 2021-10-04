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
<body style="background-color: #F0F3F4;">

	<!-- Sidebar -->
	<div class="w3-sidebar w3-bar-block w3-border-right w3-grey"
		style="display: none" id="mySidebar">
		<button onclick="w3_close()" class="w3-bar-item w3-large">Close
			&times;</button>
		<a href="/Admin/users"
			class="w3-bar-item w3-button w3-padding-24 w3-border-bottom w3-hover-green">Users</a>
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
			<h1>Product List</h1>
			<br /> <a type="button" class="btn btn-success"
				href="/Admin/addproduct">ADD PRODUCT</a> <br /> <br />
			<table
				class="table table-striped table-hover table-condensed table-bordered"
				border="1">

				<tr>
					<th>Model</th>
					<th>ItemName</th>
					<th>Color</th>
					<th>Price</th>
					<th>Features</th>
					<th>Product Image</th>
					<th>ProductID</th>
					<th>CategoryID</th>
					<th>QuantityAvailable</th>
					<th>Item Type</th>
					<th>Action</th>
				</tr>
				<tbody>
					<c:forEach var="product" items="${products}">
						<tr>
							<td>${product.model}</td>
							<td>${product.itemname}</td>
							<td>${product.color}</td>
							<td>${product.price}</td>
							<td>${product.features}</td>
							<td><img src="/Images/${product.itemname}.jpg" alt="NoImg"
								border=3 height=100 width=100 /></td>
							<td>${product.productid}</td>
							<td>${product.categoryid}</td>
							<td>${product.quantity_available}</td>
							<td>${product.itemtype}</td>
							<td><a
								href="/Admin${pageContext.request.contextPath }/update/${product.model}">
									<span class="glyphicon glyphicon-edit"> </span>
							</a> &nbsp;&nbsp;&nbsp; <a
								href="/Admin${pageContext.request.contextPath }/delete/${product.model}"
								onclick="return confirm('Are you sure?')"><span
									class="glyphicon glyphicon-trash"> </span> </a></td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>
	</div>

</body>
</html>