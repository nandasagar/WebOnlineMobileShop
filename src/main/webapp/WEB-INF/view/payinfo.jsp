<!DOCTYPE html>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>

<html>
<head>
<meta charset="ISO-8859-1">
<title>payment info</title>
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



.button3:hover {
  box-shadow: 0 12px 16px 0 rgba(0,0,0,0.24),0 17px 50px 0 rgba(0,0,0,0.19);
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

</style>
</head>

	<nav class="navbar navbar-inverse">
		<div class="container-fluid">
			<div class="navbar-header">
				<a class="navbar-brand" href="#">Online Shop</a>
			</div>
			 <ul class="nav navbar-nav">
      <li class="active"><a href="#">Payment INFO</a> </li>
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
  </div>
 </nav>
  
<h2><center>Payment Page</center></h2>
<br>


	<div class="container">
		<div class="starter-template">
			<h1>your orders</h1>
			<table class="table table-striped table-hover table-condensed table-bordered" border="1">
			
				<tr>
					<!--  <th> Image</th>-->
								<th>Order Id</th>
					            <th>model </th>
								<th>Image</th>
								<th>Item Name</th>
								<th>Quantity</th>
								<th>Total</th>
								
				</tr>
				<tbody>  
		    <c:forEach var="order" items="${multiple}" > 
		    	<tr>				<%-- <td>${cartid}</td> --%>
		    						<td>${order.orderid}</td>
		    						<td>${order.model}</td>
					<td> <img src="/Images/${order.itemname}.jpg" alt="NoImg" border=3 height=100 width=100/></td>
									<td>${order.itemname}</td>
									<td>${order.quantity}</td>									
									<td>${order.total}</td>
									
				</tr> 
		   	</c:forEach>
				</tbody>
			</table>
		</div>




 <%-- Working Fine 
<form action="../../pay/${order.orderid }" method="post" > --%>
<style>
.center {
  margin: auto;
  width: 80%;
  border: 2px solid #2D332A;
  padding: 20px;
}
</style>

  <div class="center">

 <form id="save" action="/User/saveTopay"  method="post">
 <br>


 <label for="fullName">Full Name:</label><br>
 <input type="hidden"  value="*{paymentid}" />  
  <input type="text" id="fullName" name="fullName" value=  "${payment.fullname}" ><br>
  <label for="address">Address:</label><br>
  <input type="text" id="address" name="address" value="${payment.address}" ><br> 
   <label for="city">City:</label><br>
  <input type="text" id="city" name="city" value="${payment.city}" ><br>
	<label for="modeOfPayment">Mode of Payment:</label><br>
	<select name="modeOfPayment" id="modeOfPayment" value="${payment.modeofpayment}">
                <option value="cash">cash</option>
                <option value="loan">loan</option>
                </select>        
  <br>
  	<button type="submit" class="button button2">Confirm Payment</button>
 					 </form>
               

						
</div>
                
              

</div>
</body>
</html>