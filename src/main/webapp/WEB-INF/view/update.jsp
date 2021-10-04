<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<html lang='en'>
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


	<div class="container">
		<spring:url value="/Admin/savep" var="saveURL" />
		<h2>Update Product Page</h2>

		<form:form modelAttribute="item" method="post" action="${saveURL }"
			cssClass="form">
			<form:hidden path="model" />

			<div class="form-group">
				<label>Model</label>
				<form:input path="model" cssClass="form-control" id="model"
					readOnly="true" />
			</div>

			<div class="form-group">
				<label>ItemName</label>
				<form:input path="itemname" cssClass="form-control" id="itemname"
					readOnly="true" />
			</div>

			<div class="form-group">
				<label>Color</label>
				<form:input path="color" cssClass="form-control" id="color"
					readOnly="true" />
			</div>

			<div class="form-group">
				<label>Price</label>
				<form:input path="price" cssClass="form-control" id="price"
					readOnly="true" />
			</div>

			<div class="form-group">
				<label>Features</label>
				<form:input path="features" cssClass="form-control" id="features"
					readOnly="true" />
			</div>

			<div class="form-group">
				<label>ProductId</label>
				<form:input path="productid" cssClass="form-control" id="productid"
					readOnly="true" />
			</div>

			<div class="form-group">
				<label>CategoryId</label>
				<form:input path="categoryid" cssClass="form-control"
					id="categoryid" readOnly="true" />
			</div>

			<div class="form-group">
				<label>Quantity Available</label>
				<form:input path="quantity_available" cssClass="form-control"
					id="quantity_available" />
			</div>

			<div class="form-group">
				<label>ItemType</label>
				<form:input path="itemtype" cssClass="form-control" id="itemtype"
					readOnly="true" />
			</div>

			<button type="submit" class="btn btn-primary">Save</button>

		</form:form>

	</div>

</body>
</html>