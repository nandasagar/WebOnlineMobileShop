<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!--<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%> -->
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Search Display Page</title>
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
  
  .content {
  max-width: 50px;
  margin: auto;
}

.center {
  text-align: center;
}

.column {
  float: left;
  width: 50%;
  padding: 10px;
  height: 60%; /* Should be removed. Only for demonstration */
}
/* Clear floats after the columns */
.row:after {
  content: "";
  display: table;
  clear: both;
}

.body {
  font-family: Arial;
  color: white;
}

.split {
  height: 50%;
  width: 50%;
  position: fixed;
  z-index: 1;
  top: 0;
  overflow-x: hidden;
  padding-top: 20px;
}

.left {
  left: 0;
  background-color: #111;
}

.right {
  right: 0;
  background-color: red;
}


.centered {
  position: fixed;
  top: 50%;
  left: 50%;
  margin-top: -50px;
  margin-left: -100px;
}


.centered img {
  width: 150px;
  border-radius: 50%;
}
</style>
</head>
<body>
	<nav class="navbar navbar-inverse">
		<div class="container-fluid">
			<div class="navbar-header">
				<a class="navbar-brand" href="#">Online Shop</a>
			</div>
			 <ul class="nav navbar-nav">
      <li class="active"><a href="#">ADD TO CART </a> </li>
      <li><a href="/mobile">Mobile</a></li>
      <li><a href="/access">Accessories</a></li>

       
      <li><div class="d">
       <form action="/User/getcart/" method="post">
       <input  type="submit" value="Cart"></form></div>
        </li>
        
         <li><div class="d">
       <form action="/User/getorder/" method="post">
       <input  type="submit" value="My Orders"></form></div>
        </li>
       
       
      <!--   <li><a href="/allorder">AllOrders</a></li> -->
    
      <li ><a href="/User/logout">Logout</a></li>
    </ul>
  </div></nav>



 <div class="centered">
  <h3> &nbsp;&nbsp;&nbsp;&nbsp;${itemdta.itemname }</h3>
   &nbsp; <img src="/Images/${itemdta.itemname}.jpg" alt="NoImg" border=3 height=200 width=200/></td>
  </div>
 
 
<style>
.center {
  margin: auto;
  width: 80%;
  border: 2px solid #2D332A;
  padding: 20px;
}
</style>

  <div class="center">

 <form id="save" action="/User/saveToCart"  method="post" modelAttribute="itemdta">
 <br>


 <label for="itemname">Item Name:</label><br>
  <input type="text" id="itemname" name="itemname" value=${itemdta.itemname}  readonly><br>
  <label for="model">Model:</label><br>
  <input type="text" id="model" name="model" value=${itemdta.model}  readonly><br>
 
  <%--   ${email.email}<br> 
  <label for="email">Confirm Email:</label><br>
  <input type="text" id="email" name="email"  value="${cart.email}"><br>--%>
  
   <label for="price">Price:</label><br>
  <input type="text" id="price" name="price" value=${itemdta.price}  readonly><br>
<label for="qty">Quantity:</label><br>
  <input type="text" id="qty" name="qty" onchange="myFunction()" value="${cart.quantity}"><br>
  
   <label for="total">Total:</label><br>
  <input type="text" id="total" name="total" value="${cart.total}"  readonly> <br>
  <input type="submit" value="submit">
</form> 


</div>


<script>
function myFunction() {
  var qty = parseInt(document.getElementById("qty").value);
  var price = parseInt(document.getElementById("price").value);
  document.getElementById("total").value = parseInt(qty*price);
}
</script>

</body>










</html>  







