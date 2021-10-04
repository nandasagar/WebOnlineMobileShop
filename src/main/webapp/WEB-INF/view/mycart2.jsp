<!DOCTYPE html>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>

<html>
<head>
<meta charset="ISO-8859-1">
<title>cart info</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
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
h1 {color:red;}

	.button {
  background-color: lightgreen; /* Green */
  border: none;
  color: white;
  padding: 15px 32px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 16px;
  margin: 4px 2px;
  cursor: pointer;
  -webkit-transition-duration: 0.4s; /* Safari */
  transition-duration: 0.4s;
}



.button3{
  background-color: red; /* Green */
  border: none;
  color: white;
  padding: 15px 32px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 16px;
  margin: 2px 2px;
  cursor: pointer;
  -webkit-transition-duration: 0.4s; /* Safari */
  transition-duration: 0.4s;
}
.button2 {
  background-color: green; /* Green */
  border: none;
  color: white;
  padding: 15px 32px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 16px;
  margin: 2px 2px;
  cursor: pointer;
  -webkit-transition-duration: 0.4s; /* Safari */
  transition-duration: 0.4s;
}



.button2:hover {
  box-shadow: 0 12px 16px 0 rgba(0,0,0,0.24),0 17px 50px 0 rgba(0,0,0,0.19);
}
.button3:hover {
  box-shadow: 0 12px 16px 0 rgba(0,0,0,0.24),0 17px 50px 0 rgba(0,0,0,0.19);
}

</style>
</head>

	<nav class="navbar navbar-inverse">
		<div class="container-fluid">
			<div class="navbar-header">
				<a class="navbar-brand" href="#">Online Shop</a>
			</div>
			 <ul class="nav navbar-nav">
      <li class="active"><a href="#">MY CART </a> </li>
      <li><a href="/mobile">Mobile</a></li>
      <li><a href="/access">Accessories</a></li>

       
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
		<div align="center">
			<h1>CartList </h1>
		</div>
			
							
			<table
				class="table table-striped table-hover table-condensed table-bordered"
				border="1">
 <tr>

			<th>CartId</th>
			<th>Image</th>
			<th>Email</th>
			<th>Item Name</th>
			<th>Model</th>
			<th>Price</th>
			<th>Quantity</th>
			<th>Total</th>
			<th>Action</th>
		
		</tr>
		<tr>
			<c:forEach items="${cart}" var="cart">
				<tr>
					<td>${cart.cartid}<input type="hidden" id="cartid" name="cartid" value=${cart.cartid}></input></td>
					<td> <img src="/Images/${cart.itemname}.jpg" alt="NoImg" border=3 height=100 width=100/></td>
					<td>${cart.email}</td>
					<td>${cart.itemname}</td>
					<td>${cart.model}</td>
					<td>${cart.price}</td>
					<td>${cart.quantity}</td>
					<td>${cart.total}</td>
                    <td> 
                    <form action="/User/remove/${cart.cartid}" method="post">
						<button type="submit" class="button button3">Remove</button>
 					 </form>
                    </td>
                   
					
				</tr>
			</c:forEach>
		</tr>

	</table>
	<br>
	<br>
<form action="/User/save-orders" method="post">
<c:if test="${total!=0}">

<h2>Sub Total (Rupees)</h2>${total}<br>

						<button type="submit" class="button button2">Confirm Order</button></c:if>
 					 </form>

</body>
</html>
</head>






