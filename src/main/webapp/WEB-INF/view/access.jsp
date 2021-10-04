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
      <li class="active"><a href="#">Accessories Lists</a> </li>
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



<!-- 
      <form class="form-inline my-2 my-lg-0"> 
        <li><a href="/addaccess">Add Accessories</a></li>
    </form>
    
 -->


<div class="container">

<h1>Accessories </h1>


<div class="gallery">
<form action="/view-power" method="post">
<img src="https://sm.pcmag.com/pcmag_in/gallery/t/the-best-p/the-best-portable-chargers-and-power-banks-for-2020_j4wh.jpg" class="img-thumbnail" alt="Cinque Terre" width="260" height="150"><br>
<button type="submit" class="btn btn-black">Shop Power Bank</button>
  </form>
 </div>

  
 
<div class="gallery">
   <form action= "/view-headset" method="post">
   <img src="https://cdn.vox-cdn.com/thumbor/HUuaq9gJpxlMygTToqYG3dnY-UM=/0x0:3000x3000/1200x0/filters:focal(0x0:3000x3000):no_upscale()/cdn.vox-cdn.com/uploads/chorus_asset/file/14474055/01_051_049_HERO.png" class="img-thumbnail" alt="Cinque Terre" width="260" height=150"><br>
   <button type="submit" class="btn btn-black">Shop Head Sets</button>
  </form>
  </div>
  
  
  
  <div class="gallery">
   <form action= "/view-charger" method="post">
   <img src="https://tse1.mm.bing.net/th?id=OIP.uxDl8h4isFz-6RSxnhbuswHaHa&pid=Api&P=0&w=300&h=300" class="img-thumbnail" alt="Cinque Terre" width="260" height="150"><br>
   <button type="submit" class="btn btn-black">Shop Charger</button>
  </form> 
  </div>
  
   
   
   
   <div class="gallery">
     <form action= "/view-cover" method="post">
     <img src="https://images.yourstory.com/cs/1/60709db0-9f1a-11e9-a0eb-053454362c91/Different-types-of-Mobile-Covers-to-protect-your-Mobile-Phone-1562327653451.?fm=png&auto=format&ar=2:1&mode=crop&crop=face" class="img-thumbnail" alt="Cinque Terre" width="260" height="150"><br>
     <button type="submit" class="btn btn-black">Shop Mobile Covers</button>
  </form> 
  </div>
  <div class="gallery">
      <form action= "/view-screen" method="post"><img src="https://i.ebayimg.com/images/i/262529013403-0-1/s-l1000.jpg" class="img-thumbnail" alt="Cinque Terre" width="260" height="150"><br>
      <button type="submit" class="btn btn-black">Shop Screen protectors</button>
  </form> 
  </div>
  
  <div class="gallery">
       <form action= "/view-usb" method="post"><img src="https://www.fonedog.com/images/android/data-recovery/usb-device.jpg" class="img-thumbnail" alt="Cinque Terre" width="260" height="150"><br>
      <button type="submit" class="btn btn-black">Shop USB</button>
  </form> 
  </div>
</div>




 </body>
</html>