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

</style>
</head>

	<nav class="navbar navbar-inverse">
		<div class="container-fluid">
			<div class="navbar-header">
				<a class="navbar-brand" href="#">Cart List</a>
			</div>
			 <ul class="nav navbar-nav">
      <li class="active"><a href="#">Payment Success </a> </li>
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
			<h1>Invoice </h1>
		
			
							
			<table
				class="table table-striped table-hover table-condensed table-bordered"
				border="1">
 <tr>

			<th>payment Id</th>
			<th>Full Name</th>
			<th>Image</th>
			<th>Item Name</th>
			<th>Email</th>
			<th>Address</th>
			<th>City</th>
			<th>Mode of Payment</th>
			<th>Total</th>
	
		
		</tr>
		<tr>
			<c:forEach items="${multiple}" var="cart">
				<tr>
					<td>${cart.paymentid}</td>
					<td>${cart.fullname}</td>
					
					<td> <img src="/Images/${cart.itemname}.jpg" alt="NoImg" border=3 height=100 width=100/></td>
					<td>${cart.itemname}</td>
					<td>${cart.email}</td>
					<td> ${cart.address}</td>
					<td> ${cart.city}</td>
					<td> ${cart.modeofpayment}</td>	
					<td>${cart.total}</td>
        
                   
					
				</tr>
			</c:forEach>
		</tr>

	</table>

</body>
</html>
</head>






