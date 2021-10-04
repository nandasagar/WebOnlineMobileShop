<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Cart</title>
<style>
.content {
  max-width: 500px;
  margin: auto;
}


.column {
  float: left;
  width: 50%;
  padding: 10px;
  height: 100%; /* Should be removed. Only for demonstration */
}
/* Clear floats after the columns */
.row:after {
  content: "";
  display: table;
  clear: both;
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
<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script></head>
<body>


<meta name="viewport" content="width=device-width, initial-scale=1">


	<nav class="navbar navbar-inverse">
		<div class="container-fluid">
			<div class="navbar-header">
				<a class="navbar-brand" href="#">Online Shop</a>
			</div>
			 <ul class="nav navbar-nav">
      <li class="active"><a href="#">Cart</a> </li>
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
 


<div class="row">
  <div class="column" style="background-color:white";>
    <h3> &nbsp;&nbsp;&nbsp;&nbsp;${cart.itemname }"</h3>
   &nbsp; <img src="/Images/${cart.itemname}.jpg" alt="NoImg" border=3 height=450 width=500/></td>
  </div>
<div class="column" style="background-color:white;">
<div class="content">
 
<form action="../save-cart/${cart.price}/${cart.itemname }" method="post">
                  <div class="form-group">
                     <label>Email</label>
                       <input type="hidden"  value="*{ cartid}" />     
                     <input type="text"  class="form-control" name="email" value="<%= session.getAttribute("email") %>" 
                       placeholder="email" />
                  </div>
                  
                  <div class="form-group">
                     <label>Product Name</label>   
                     <input type="text"  class="form-control" name="image" value="${cart.itemname }"
                       placeholder="name" />      
                  </div>
                  
                  <div class="form-group">
                   <label>Model</label>
                     <input type="text"  class="form-control" name="model" value="${cart.model }" 
                      placeholder="model" />
                  </div>
                    <div class="form-group">
                 <%--     <label>Quantity</label>    
                     <input type="text"  class="form-control" name="quantity" value="${cart.quantity }"
                       placeholder="quantity" />
               --%>
               		 <label for="Quantity"> Choose Quantity </label> 
                
                <select name="quantity" id="quantity">
                <option value=1>1</option>
                <option value=${cart.quantity }>2</option>
                <option value=${cart.quantity }>3</option>
                <option value=${cart.quantity }>4</option>
                <option value=${cart.quantity }>5</option>
                <option value=${cart.quantity }>6</option>
                <option value=${cart.quantity }>7</option>
                <option value=${cart.quantity }>8</option>
                </select>
                  </div>
                  <div class="form-group">
                     <label>Price</label>    
                     <input type="text"  class="form-control" name="price" value="${cart.price }"
                       placeholder="price" />
                  </div>

                  <button type="submit" class="btn btn-black">Proceed to payment</button>
               </form>
               </div>
                </div>
                <br>
								<a type="button" class="btn btn-warning"
								href="/User/logout">logout</a><br>
</div>
</body>
</html>