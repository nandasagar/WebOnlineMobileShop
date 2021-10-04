<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>   
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
.slider-outer{
   height:100% !important;
   
  overflow:hidden;
}
.slider{
 
    width: 100%;
    height: 100%;
    
}
.slide-image{
  width: 100%;
    height: 100%;
   display:block;
    color: transparent;
    background-size: cover;
    -moz-background-size: cover;
    -ms-background-size: cover;
    -o-background-size: cover;
    -webkit-background-size: cover;
    background-position: 50% 50%;
    background-repeat: none;
}
.slider .slide-item{
  float:left;
    padding: 0;
    margin: 0;
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


<style>
/* body {
  background-image: url("img_tree.gif"), url("paper.gif");
  background-color: #cccccc;
} */
.container {
		width: 80%;
		margin: 0 auto;
		padding: 20px;
		
	}
	div.gallery {
  margin: 5px;
  border: 1px solid #ccc;
  float: left;
  width: 180px;
}

* {
  box-sizing: border-box;
}

.column {
  float: left;
  width: 33.33%;
  padding: 5px;
}

/* Clearfix (clear floats) */
.row::after {
  content: "";
  clear: both;
  display: table;
}

div.gallery:hover {
  border: 1px solid #777;
}

 div.gallery img {
  width: 100%;
  height: auto;
} 

div.desc {
  padding: 15px;
  text-align: center;
}
</style>
</head>
<body style="background-color:#F0F3F4;">

<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="#">Online Store</a>
    </div>
    <ul class="nav navbar-nav">
      <li class="active"><a href="#">Mobile Brands</a> </li>
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



<div class="container">

<h1>Mobile Brands</h1>


<div class="gallery">

  
<form action="/apple" method="post">
<img src="https://logos-world.net/wp-content/uploads/2020/04/Apple-Logo-700x394.png" class="img-thumbnail" alt="Cinque Terre" width="260" height="150"><br>
<button type="submit" class="btn btn-black">Shop Apple</button>
  </form>
 </div>

  

<div class="gallery">
   <form action= "/samsung" method="post">
   <img src="https://turbologo.com/articles/wp-content/uploads/2019/07/samsung-logo-2015.jpg.webp" class="img-thumbnail" alt="Cinque Terre" width="260" height=100"><br>
   <button type="submit" class="btn btn-black">Shop Samsung</button>
  </form>
  </div>

  <div class="gallery">
   <form action= "/realme" method="post">
   <img src="https://dhlm2eb86cbhs.cloudfront.net/public/thumbs/news/2018/11/24319/realme-logo-a_425_735.webp" class="img-thumbnail" alt="Cinque Terre" width="260" height="100"><br>
   <button type="submit" class="btn btn-black">Shop Realme</button>
  </form> 
  </div>
  

   <div class="gallery">
     <form action= "/oneplus" method="post">
     <img src="https://bestmediainfo.com/timthumb.php?src=/wp-content/uploads/2020/03/OnePlus_8.jpg&w=620&h=350&zc=1&q=100" class="img-thumbnail" alt="Cinque Terre" width="260" height="150"><br>
     <button type="submit" class="btn btn-black">Shop  OnePlus</button>
  </form> 
  </div>

  <div class="gallery">  
      <form action= "/vivo" method="post"><img src="http://www.mithrasconsultants.com/wp-content/uploads/2018/05/Vivo-Logo.jpg" class="img-thumbnail" alt="Cinque Terre" width="260" height="100"><br>
      <button type="submit" class="btn btn-black">Shop Vivo</button>
  </form> 
  </div>

  <div class="gallery">
       <form action= "/mi" method="post"><img src="https://onphones.com/wp-content/uploads/2018/04/mi-logo.jpg" class="img-thumbnail" alt="Cinque Terre" width="260" height="100"><br>
      <button type="submit" class="btn btn-black">Shop MI</button>
  </form> 
  </div>
</div>




 </body>
</html>

























  


 


 </body>
</html>