
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@ page import="java.util.List" %>
	<%@ page import="com.mobile.application.model.Image" %>
<!--<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%> -->
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">    
  
 <html>
 <head>
 <link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

<meta name="viewport" content="width=device-width, initial-scale=1">
 
<style>
​​​​​​
* {
	box-sizing: border-box
}

body {
	font-family: Verdana, sans-serif;
	margin: 0
}

.mySlides {
	display: none
}

img {
	vertical-align: middle;
}

.main{
  width:100%;
  height:500px;
  margin: 0 auto;
}
.clear{
  clear:both;
}
.cs {
  top: 50%;
  left: 50%;
  padding: 2.5rem;
}
.cs input[type="text"]
{
  outline: black;
  width : 80%;
  padding: 0.700rem 2.25rem;
  cursor: pointer;
  border-radius: 0.312rem;
  font-size: 2rem;
  background-color: white;
  
}

.cs input[type="submit"] {
  border: black;
  outline: black;
  color: white;
  background-color: black;
  padding: 0.625rem 1.25rem;
  cursor: pointer;
  border-radius: 0.312rem;
  font-size: 1rem;
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

			 <ul class="nav navbar-nav">
      <li class="active"><a href="#">Online Shop </a> </li>
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
			<h1>Order List</h1>
			<table
				class="table table-striped table-hover table-condensed table-bordered" border="1">
			
				<tr>
					
			<th>IMAGES</th>	
			<th>MODEL</th>   
            <th>ITEMNAME</th>
            <th>COLOR</th>
            <th>PRICE</th>
            <th>FEATURES</th>
            <!-- <th>PRODUCTID</th>
            <th>CATEGORYID</th>
            <th>QUANTITY_AVAILABLE</th> -->
            <th>ADD TO CART</th>
				</tr>
				<tbody>
		    	<c:forEach var="listitem" items="${list}" >
		    	<tr>
					<%-- ${Item.acc_img} --%>
 <td><img src="/Images/${listitem.itemname}.jpg" alt="NoImg" border=3 height=100 width=100/></td>
 <td >${listitem.model}</td>
 <td >${listitem.itemname}</td>
 <td> ${listitem.color}</td>
 <td >${listitem.price}</td> 
 <td >${listitem.features}</td>
 <%-- <td >${listitem.productid}</td>
 <td >${listitem.categoryid}</td>
 <td> ${listitem.quantity_available}</td> --%>
<!--  <td> 
 <select name="quantity" id="quantity">
                <option value=1>1</option>
                <option value=2>2</option>
                 <option value=3>3</option>
                <option value=4>4</option>
                 <option value=5>5</option>
                <option value=6>6</option> 
                <option value=7>7</option>
                <option value=8>8</option>
                 <option value=9 >9</option>
                <option value=10 >10</option>
                </select>
 
 
 </td> -->

<%-- /${listitem.itemname}/${listitem.price} --%>
 <td>

 <form action="/User/addcart/${listitem.model}" method="post"> 
 <button type ="submit" >Add to Cart</button>     </form>

 </td>
 <%-- <a href="@{'/carti/' + ${listitem.model}}"> ADD TO CART</a> --%>
   
				</tr> 
		    	</c:forEach>
				</tbody>
			</table>
		</div>
	
	</div>

</body>
</html>