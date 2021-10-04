<!DOCTYPE html>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>

<html>
<head>
<meta charset="ISO-8859-1">
<title>Order info</title>
<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>

<style>
body {
    font-family: "Lato", sans-serif;
}



.main-head{
    height: 150px;
    background: #FFF;
   
}

.sidenav {
    height: 100%;
    background-color: #000;
    overflow-x: hidden;
    padding-top: 20px;
}


.main {
    padding: 0px 10px;
}


.content {
  max-width: 500px;
  margin: auto;
}
.btn-black{
    background-color: #000 !important;
    color: #fff;
}

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
      <li class="active"><a href="#">MY CART </a> </li>
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


<h2><center>Order Page</center></h2>
<br>


	<div class="container">
		<div class="starter-template">
			<h1>Order</h1>
			<table class="table table-striped table-hover table-condensed table-bordered" border="1">
			
				<tr>
					<!--  <th> Image</th>-->
								<th>Order Id</th>
								<th>Cart Id</th>
					            <th>model </th>
								<th>Image</th>
								<th>Item Name</th>
								<th>Quantity</th>
								<th>Total</th>
								
				</tr>
				<tbody>  
		    <%-- 	<c:forEach var="Cart" items="${listCart}" > --%>
		    	<tr>				<%-- <td>${cartid}</td> --%>
		    						<td>${order.orderid}</td>
		    						<td>${cartid}</td>
		    						<td>${order.model}</td>
					<td> <img src="/Images/${order.itemname}.jpg" alt="NoImg" border=3 height=100 width=100/></td>
									<td>${order.itemname}</td>
									<td>${order.quantity}</td>									
									<td>${order.total}</td>
									
				</tr> 
		    <%-- 	</c:forEach> --%>
				</tbody>
			</table>
		</div>




 <%-- Working Fine --%>
<form action="../../pay/${order.orderid }" method="post" >
  			<div >	
								<input type="hidden"  value="*{orderid}" />     
                           
     	  				    
      				                     </div>
<button type="submit" class="button">Proceed to Payment</button>
 </form>
<a href="/home">Go Back</a>
	</div>
  
</body></html>