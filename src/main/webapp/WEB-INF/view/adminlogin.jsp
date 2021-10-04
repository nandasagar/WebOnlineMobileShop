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
</head>
<body style="background-color: #F0F3F4;">

	<!-- Sidebar -->
	<div class="w3-sidebar w3-bar-block w3-border-right w3-grey"
		style="display: none" id="mySidebar">
		<button onclick="w3_close()" class="w3-bar-item w3-large">Close
			&times;</button>
		<a href="/Admin/products"
			class="w3-bar-item w3-button w3-padding-24 w3-border-bottom w3-hover-green">Products</a>
		<a href="/Admin/users"
			class="w3-bar-item w3-button w3-padding-24 w3-border-bottom w3-hover-green">Users</a>
		<a href="/Admin/ordersadmin"
			class="w3-bar-item w3-button w3-padding-24 w3-border-bottom w3-hover-green">Orders</a>
		<a href="/stocks"
			class="w3-bar-item w3-button w3-padding-24 w3-border-bottom w3-hover-green">Stocks</a>
		<a href="/register1"
			class="w3-bar-item w3-button w3-padding-24 w3-border-bottom w3-hover-black">Add
			New Admin</a> <a href="/Admin/adminlogout"
			class="w3-bar-item w3-button w3-padding-24 w3-border-bottom w3-hover-black">LogOut</a>
	</div>


	<!-- Page Content -->
	<div class="w3-teal">
		<button class="w3-button w3-teal w3-xlarge" onclick="w3_open()">Menu</button>
		<div class="w3-container">
			<h1 align="center">Administrator</h1>
		</div>
	</div>

	<div class="w3-container w3-center w3-animate-top">
		<h1>Welcome Admin ${l.email } !</h1>
		<p>Click On Menu for Actions</p>
	</div>
	<br>
	<br>
	<center>
		<img
			src="https://pngimage.net/wp-content/uploads/2018/06/mobile-shop-logo-png-2.png"
			class="w3-round" alt="Noimg" style="width: 40%">

		<script>
			function w3_open() {
				document.getElementById("mySidebar").style.display = "block";
			}
			function w3_close() {
				document.getElementById("mySidebar").style.display = "none";
			}
		</script>
</body>
</html>