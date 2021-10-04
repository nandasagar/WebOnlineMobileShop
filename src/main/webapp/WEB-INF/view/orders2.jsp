<!DOCTYPE html>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>

<html>
<head>
<meta charset="ISO-8859-1">
<title>Payment info</title>
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


<h2><center>Order Page</center></h2>
<br>


	<div class="container">
		<div class="starter-template">
			<h1>Order</h1>
			<table class="table table-striped table-hover table-condensed table-bordered" border="1">
			
				<tr>
					<!--  <th> Image</th>-->
								<th>Order Id</th>
					            <th>model </th>
								<th>Image</th>
								<th>Item Name</th>
								<th>Quantity</th>
								<th>Total</th>
								<th>Action</th>
							<!-- 	<th>Action</th> -->
								
				</tr>
				<tbody>  
		    <c:forEach var="order" items="${multiple}" > 
		    	<tr>		
		    						<td>${order.orderid}</td>
		    						<td>${order.model}</td>
					<td> <img src="/Images/${order.itemname}.jpg" alt="NoImg" border=3 height=100 width=100/></td>
									<td>${order.itemname}</td>
									<td>${order.quantity}</td>									
									<td>${order.total}</td>
								 <td> 
                    <form action="/User/removeOrder/${order.orderid}" method="post">
						<button type="submit" class="button button3">Remove</button>
 					 </form>
                    </td>
	</tr>
		   	</c:forEach>
				</tbody>
			</table>
		</div>




 <%-- Working Fine 
<form action="../../pay/${order.orderid }" method="post" > --%>




<form action="../../User/pay" method="post" >
<c:if test="${total!=0}">

<h2>Sub Total (Rupees)</h2>${total}<br>
	<button type="submit" class="button button2">Proceed to Payment</button></c:if>
 	
 </form>
	</div>
	
  
</body></html>