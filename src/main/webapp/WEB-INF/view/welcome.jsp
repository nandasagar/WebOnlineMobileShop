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
    height: 70%;
    
}
.slide-image{
  width: 100%;
    height: 70%;
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

div.gallery {
  margin: 100px;
  border: 0px solid #ccc;
  float: left;
  width: 200px;
}

div.gallery:hover {
  border: 1px solid #777;
}

div.gallery img {
  width: 150%;
  height: 300%;
}

div.desc {
  padding: 15px;
  text-align: center;
}


</style>
</head>
<body>

<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="#">Online Store</a>
    </div>
    
    <ul class="nav navbar-nav">
      <li class="active"><a href="#">Home ${l}</a> </li>
      <li><a href="/mobile">Mobile</a></li>
      <li><a href="/access">Accessories</a></li>
       
      <li><div class="d">
       <form action="/User/getcart" method="post">
       <input  type="submit" value="Cart"></form></div>
        </li>
        
         <li><div class="d">
       <form action="/User/getorder" method="post">
       <input  type="submit" value="My Orders"></form></div>
        </li>
       
       
      <!--   <li><a href="/allorder">AllOrders</a></li> -->
    
      <li ><a href="/User/logout">Logout</a></li>
            <li><a href="/Contact">Contact Us</a></li>
      
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
<br><br>
 	<div class="main">
  <div class="slider-outer">
    <div class="slider">
       <div class="slide-item"><span class="slide-image" style="background-image: url(/images/samsung.jpg);"></span></div>
      <div class="slide-item"><span class="slide-image" style="background-image: url(https://media.wired.com/photos/5d77f7e4965a3600094e27fc/master/w_2560%2Cc_limit/iPhone-11-Pro-Cam.jpghttps://media.wired.com/photos/5d77f7e4965a3600094e27fc/master/w_2560%2Cc_limit/iPhone-11-Pro-Cam.jpg);"></span></div>
      <div class="slide-item"><span class="slide-image" style="background-image: url(/images/headphones.jpg);"></span></div>
            <div class="slide-item"><span class="slide-image" style="background-image: url(/images/realme.jpg);"></span></div>
      <div class="slide-item"><span class="slide-image" style="background-image: url(/images/watch.jpg);"></span></div>
      
      
    </div>
  </div>
</div>
<div>
		<a class="prev" onclick="plusSlides(-1)">&#10094;</a> <a class="next"
			onclick="plusSlides(1)">&#10095;</a>

	</div>
	<br>

	<div style="text-align: center">
		<span class="dot" onclick="currentSlide(1)"></span> <span class="dot"
			onclick="currentSlide(2)"></span> <span class="dot"
			onclick="currentSlide(3)"></span> <span class="dot"
			onclick="currentSlide(4)"></span> <span class="dot"
			onclick="currentSlide(5)"></span> <span class="dot"
			onclick="currentSlide(6)"></span>
	</div>
	
	
	<center><h2>Wide Range of products are available here</h2>
	
	<div class="gallery">
  <a target="_blank">
    <img src="/images/applelogo.jpg" alt="Cinque Terre" width="600" height="400">
  </a>
    <div class="desc"><b>APPLE PRODUCS</div>
  
</div>

<div class="gallery">
  <a target="_blank">
    <img src="/images/samsungglogo.jpg" alt="Forest" width="600" height="800">
  </a>
    <div class="desc">SAMSUNG PRODUCTS</div>
  
</div>

<div class="gallery">
  <a target="_blank">
    <img src="/images/onepluslogo.jpg" alt="Northern Lights" width="600" height="400">
  </a>
    <div class="desc">ONEPLUS PRODUCTS</div>
  
</div>

<div class="gallery">
  <a target="_blank">
    <img src="/images/sonylogo.jpg" alt="Northern Lights" width="600" height="400">
  </a>
    <div class="desc">AUDIO PRODUCTS</div>
  
</div>
<div class="gallery">
  <a target="_blank">
    <img src="/images/milogo.jpg" alt="Northern Lights" width="600" height="400">
  </a>
    <div class="desc">POWERBANKS</div>
  
</div>
<div class="gallery">
  <a target="_blank">
    <img src="/images/chargerlogo.jpg" alt="Northern Lights" width="600" height="400">
  </a>
    <div class="desc">CHARGERS</div>
  
</div>
	
	
	<script>
	 var slideCount = document.querySelectorAll('.slider .slide-item').length;
	  var slideWidth = document.querySelectorAll('.slider-outer')[0].offsetWidth;
	  var slideHeight = document.querySelectorAll(".slider-outer")[0].offsetHeight;

	  var sliderUlWidth = slideCount * slideWidth;
	  document.querySelectorAll('.slider')[0].style.cssText = "width:" + sliderUlWidth + "px";

	  for (var i = 0; i < slideCount; i++) {
	    document.querySelectorAll('.slide-item')[i].style.cssText = "width:" + slideWidth + "px;height:" + slideHeight + "px";
	  }

	  setInterval(function() {
	    moveRight();
	  }, 3000);
	  var counter = 1;

	  function moveRight() {
	    var slideNum = counter++
	      if (slideNum < slideCount) {
	        var transformSize = slideWidth * slideNum;
	        document.querySelectorAll('.slider')[0].style.cssText = 
	          "width:" + sliderUlWidth + "px; -webkit-transition:all 800ms ease; -webkit-transform:translate3d(-" + transformSize + "px, 0px, 0px);-moz-transition:all 800ms ease; -moz-transform:translate3d(-" + transformSize + "px, 0px, 0px);-o-transition:all 800ms ease; -o-transform:translate3d(-" + transformSize + "px, 0px, 0px);transition:all 800ms ease; transform:translate3d(-" + transformSize + "px, 0px, 0px)";

	      } else {
	        counter = 1;
	        document.querySelectorAll('.slider')[0].style.cssText = "width:" + sliderUlWidth + "px;-webkit-transition:all 800ms ease; -webkit-transform:translate3d(0px, 0px, 0px);-moz-transition:all 800ms ease; -moz-transform:translate3d(0px, 0px, 0px);-o-transition:all 800ms ease; -o-transform:translate3d(0px, 0px, 0px);transition:all 800ms ease; transform:translate3d(0px, 0px, 0px)";
	      }

	  }
	</script>

</body>
</html>
 
