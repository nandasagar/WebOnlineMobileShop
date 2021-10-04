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
<style>
.btn-black {
	background-color: #000 !important;
	color: #fff;
}
</style>
</head>
<body>

	<!-- Page Content -->
	<div class="w3-teal">
		<a type="button" class="btn btn-warning" style="float: right;"
			href="/Admin/products">Back</a>
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


	<form action="/Admin/saveitem" method="post">
		<div class="sidenav">
			<div class="login-main-text">
				<h2>Add Product Page</h2>
			</div>
		</div>
		<div class="main">
			<div class="col-md-6 col-sm-12">
				<div class="login-form">

					<div class="form-group">
						<label>Model</label> <input type="hidden" value="*{id}" /> <input
							type="text" class="form-control" name="model"
							value="${item.model}" placeholder="Enter Model" />
					</div>
					<div class="form-group">
						<label>Item Name</label> <input type="text" class="form-control"
							name="itemname" value="${item.itemname}"
							placeholder="Enter Itemname" />

					</div>
					<div class="form-group">
						<label>Color</label> <input type="text" class="form-control"
							name="color" value="${item.color}" placeholder="Enter Color" />
					</div>
					<div class="form-group">
						<label>Price</label> <input type="text" class="form-control"
							name="price" value="${item.price}" placeholder="Enter Price" />
					</div>
					<div class="form-group">
						<label>Features</label> <input type="text" class="form-control"
							name="features" value="${item.features}"
							placeholder="Enter Features" />
					</div>
					<div class="form-group">
						<label>Product ID</label> <input type="text" class="form-control"
							name="productid" value="${item.productid}"
							placeholder="Enter ProductId" />
					</div>
					<div class="form-group">
						<label>Category ID</label> <input type="text" class="form-control"
							name="categoryid" value="${item.categoryid}"
							placeholder="Enter CategoryId" />
					</div>
					<div class="form-group">
						<label>Quantity Available</label> <input type="text"
							class="form-control" name="quantity_available"
							value="${item.quantity_available}"
							placeholder="Enter Quantity_Available" />
					</div>
					<div class="form-group">
						<label>Item Type</label> <input type="text" class="form-control"
							name="itemtype" value="${item.itemtype}"
							placeholder="Enter Item Type" />
					</div>
					<button type="submit" class="btn btn-black">ADD</button>

				</div>
			</div>
		</div>
	</form>

</body>
</html>