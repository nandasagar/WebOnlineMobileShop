<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!--<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%> -->
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<!DOCTYPE html>

<html>
<head>
<meta charset="ISO-8859-1">
<title>Orders Display Page</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script>
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<style>
.d input[type="submit"] {
  border: black;
  outline: black;
  color: white;
  background-color: #1a1a1a;
  padding: 1.22rem 2.0rem;
  cursor: pointer;
  border-radius: 0.312rem;
  font-size: 1.7rem;
}

</style>
</head>

	<nav class="navbar navbar-inverse">
		<div class="container-fluid">
			<div class="navbar-header">
				<a class="navbar-brand" href="#">Cart List</a>
			</div>
			 <ul class="nav navbar-nav">
      <li class="active"><a href="#">Mobile </a> </li>
      <li><a href="/mobile">Mobile</a></li>
      <li><a href="/access">Accessories</a></li>
<!--       <li><a href="/login">Login</a></li>
      <li><a href="/register">Register</a></li>
      
       <form action="/User/getcart/ ${l.email}" method="post">
       <input  type="submit" value="Cart"></form> -->
       
      <li><div class="d">
       <form action="/User/getcart/" method="post">
      <%-- <a href="../User/getcart/ ${l.email}"> --%>
       <input  type="submit" value="Cart"></form></div>
        </li>
        
         <li><div class="d">
       <form action="/User/getorder/" method="post">
      <%-- <a href="../User/getcart/ ${l.email}"> --%>
       <input  type="submit" value="My Orders"></form></div>
        </li>
       
       
      <!--   <li><a href="/allorder">AllOrders</a></li> -->
    
      <li ><a href="/User/logout">Logout</a></li>
    </ul>
  </div></nav>
	

	<div class="container">
		<div class="starter-template">
			<h1>Cart List</h1>
			<table
				class="table table-striped table-hover table-condensed table-bordered" border="1">
			
				<tr>
					<th>Image  </th>			
					<th>Cart Id</th>
					<th>Email</th>
					<th>Model</th>
					<th>Quantity</th>
					<th>Total </th>
					<th>Edit Quantity</th>
					<th>Buy Now</th>
				</tr>
				<tbody>
		    	<c:forEach var="cart" items="${cart}" >
		    	<tr>
					 <td><img src="/Images/${cart.image}.jpg" alt="NoImg" border=3 height=100 width=100/></td>
					<td>${cart.cartid}</td>
					<td>${cart.email}</td>
					<td>${cart.model}</td>
					<td>${cart.quantity}</td>
					<td>${cart.total}</td>
						<td>${cart.quantity}</td>
					<td>${cart.total}</td>
					 
				<%-- 	 <td>
<form action="cartedit/${cart.cartid}/${cart.itemname}/${cart.price}" method="post">
 <button type ="submit" >Add to Cart</button>  </form>
 </td>
 
  <td>
<form action="carti/${listitem.model}/${listitem.itemname}/${listitem.price}" method="post">
 <button type ="submit" >Add to Cart</button>  </form>
 </td>
 --%>				</tr> 
		    	</c:forEach>
				</tbody>
			</table>
		</div>
		<a href="/home">Go Back</a>
	</div>

</body>
</html>