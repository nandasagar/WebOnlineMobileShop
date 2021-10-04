
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!--<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%> -->
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Mobiles</title>
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
				<a class="navbar-brand" href="#"> Online Shop</a>
			</div>
			 <ul class="nav navbar-nav">
      <li class="active"><a href="#">List </a> </li>
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
			<h1>Product List</h1>
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
				<td>
				<img src="/Images/${listitem.itemname}.jpg" alt="NoImg" border=3 height=100 width=100/></td>
					<td >${listitem.model}</td>
          <td >${listitem.itemname}</td>
 <td> ${listitem.color}</td>
 <td >${listitem.price}</td> 
 <td >${listitem.features}</td>
 <%-- <td >${listitem.productid}</td>
 <td >${listitem.categoryid}</td>
 <td> ${listitem.quantity_available}</td> --%>
 
  <td>
<form action="addcart/${listitem.model}" method="post"> <button type ="submit" >Add to Cart</button>  </form>

 </td>
				</tr> 

		    	</c:forEach>
				</tbody>
			</table>
		</div>
		<a href="/welcome">Go Back</a>
	</div>

</body>
</html>