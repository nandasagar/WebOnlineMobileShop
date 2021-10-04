<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>   
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">    
  
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
			<div class="navbar-header">
				<a class="navbar-brand" href="#">Online Shop</a>
			</div>
			 <ul class="nav navbar-nav">
      <li class="active"><a href="#">Search </a> </li>
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
<div class ="cs">
 <center>
 <form action="/User/searchOprn" method="post">
      <input type="text" name="search_Item" required value="${search_Item}" onkeyup="this.setAttribute('value', this.value);" placeholder="Search for Product.">
        <input  type="submit" name=" Search_Item" value="Search Item">
   	
 </form>
 </center>
 </div>
</div>
<br><br>
<div class ="x">
   <c:if test="${SearchRes.isEmpty()}">
 	 <c:if test="${msg!=null}"><center>
 	${msg} <b>${search_key}</b></center></c:if>
 	</c:if>
 	<c:if test="${!SearchRes.isEmpty()}">
 	<center> Search Results for <b>${search_key}</center></b><br>
 	 <center>
 	 
 <div class="container">
		<div class="starter-template">
			<h3>Search List</h3>	
			<table
				class="table table-striped table-hover table-condensed table-bordered" border="1">
		
				<tr>
		
				    <th>Image</th> 
				 		<th>Model</th>  	
						<th>Name</th>
						<th>Color</th>
						<th>price</th>
						<th>Features</th> 
						<th>Add to Cart</th>
						
					</tr>
					<c:forEach var="Item" items="${SearchRes}">
						<tr>
						
					 	<td><img src="/Images/${Item.itemname}.jpg" alt="NoImg" border=3 height=100 width=100/></td>
						 <td>${Item.model }</td>
							<td>${Item.itemname }</td>
							<td>${Item.color }</td>
							<td>${Item.price }</td>
							<td>${Item.features }</td> 
							<td>
			   				<Form action="../../User/addcart/${Item.model}" method="post">
						   	<button>Add to Cart</button>
			   				</Form>
			   				</td>	
						</tr>
					</c:forEach>
	</table>
	</div></div></center></c:if>
	
 	</div>


</body>
</html>