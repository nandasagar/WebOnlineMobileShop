<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	
<!DOCTYPE html>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>

<html>
<head>
<meta charset="ISO-8859-1">
<title>Stocks</title>
<link rel="stylesheet" href="/resources/css/styles.css">
<link rel="stylesheet" href="/resources/css/test.css"> 
<style>

body{
    background-image: url("/images/blur.jpg");
      background-repeat: no-repeat;
  background-attachment: fixed;
  background-size: cover;
}

.button {
  background-color: grey; 
  border: none;
  color: white;
  padding: 15px 32px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 16px;
  margin: 4px 2px;
  cursor: pointer;
  -webkit-transition-duration: 0.4s; 
  transition-duration: 0.4s;
}



.button2:hover {
  box-shadow: 0 12px 16px 0 rgba(0,0,0,0.24),0 17px 50px 0 rgba(0,0,0,0.19);
}
</style>
</head>
<body>



	<div class="container">
		<div class="starter-template">
		<br>
			<b><h1>Stock</h1></center></b>
			<br>
			<a type="button" class="button button2" style="float:right"
								href="/adminlogin" >BACK</a> <br>
			<a type="button" class="button button2" style="float:bottom"
								href="/home" >HOME</a> <br>
	
				
			<a type="button" class="button button2" style="float:right"
								href="/addstocks" >Add Product</a> <br><br><br>
			<table border="1" style="border: 1px solid black;">

				<tr>
					<th>Model</th>
					<th>ItemName</th>
					<th>ItemType</th>
				
					<th>ProductID</th>
					<th>CategoryID</th>
					<th>QuantityAvailable</th>
					<th>Action</th>
				</tr>
				<tbody>
					<c:forEach var="product" items="${products}">
						<tr>
							<td>${product.model}</td>
							<td>${product.itemname}</td>
							<td>${product.itemtype}</td>
						
							<td>${product.productid}</td>
							<td>${product.categoryid}</td>
							<td>${product.quantityavailable}</td>
							<td> 
							<a href="${pageContext.request.contextPath }/deletee/${product.model}"
								onclick="return confirm('Are you sure?')">Delete<span class="glyphicon glyphicon-trash">
								 </span> </a> </td>
			
							
							
			
				
						</tr>
					</c:forEach>
				</tbody>
			</table>
		

</body>
</html>