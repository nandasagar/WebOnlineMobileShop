<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!------ Include the above in your HEAD tag ---------->
<!DOCTYPE html>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add</title>


<style>



input[type=text], select {
  width: 50%;
  padding: 12px 20px;
  margin: 8px 0;
  display: inline-block;
  border: 1px solid #ccc;
  border-radius: 4px;
  box-sizing: border-box;
}

input[type=submit] {
  width: 50%;
  background-color: #4CAF50;
  color: white;
  padding: 14px 20px;
  margin: 8px 0;
  border: none;
  border-radius: 4px;
  cursor: pointer;
}

input[type=submit]:hover {
  background-color: #45a049;
}
 label {
  width : 240px;
  display : inline-block;
 }
div {
  border-radius: 1px;
  background-color: none;
  padding: 4px;
}


body {
    background-image: url("/images/blur.jpg");
  background-repeat: no-repeat;
  background-attachment: fixed;
  background-size: cover;
    font-family: "Lato", sans-serif;
}


.button {
  background-color: grey; 
  border: none;
  color: white;
  padding: 15px 32px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 16px;
  margin: 4px 2px;
  cursor: pointer;
  -webkit-transition-duration: 0.4s; 
  transition-duration: 0.4s;
}



.button2:hover {
  box-shadow: 0 12px 16px 0 rgba(0,0,0,0.24),0 17px 50px 0 rgba(0,0,0,0.19);
} 

</style>
</head>
<body style="background-color:#F0F3F4;">

<form action="/savestocks" method="post">
<div class="sidenav">
         <div class="login-main-text">
         <br> <br>
            <h1>Store Products Here..</h1>
         </div>
      </div>
     
              <br><br>
                <center>  <div class="form-group">
                     <label><b><b><h3>Model : </h3></label>
                       <input type="hidden"  value="*{id}" />     
                     <input type="text"  class="form-control" name="model" value="${item.model}"
                  />
                  </div>
                  <div class="form-group">
                   <label><h3>Item Name : </h3></label>
                       <input type="text"  class="form-control" name="itemname" value="${item.itemname}" 
                       />
                      
                  </div>
                    <div class="form-group">
                     <label><h3>ItemType : </h3></label>    
                     <input type="text"  class="form-control" name="itemtype" value="${item.itemtype}"
                       />
                  </div>
              
                  <div class="form-group">
                   <label><h3>Product ID : </h3></label>
                     <input type="text"  class="form-control" name="productid"  value="${item.productid}" 
                      />
                  </div>
                  <div class="form-group">
                   <label><h3>Category ID : </h3></label>
                     <input type="text"  class="form-control" name="categoryid"  value="${item.categoryid}" 
                      />
                  </div>
                  <div class="form-group">
                   <label><h3>Quantity Available : </h3></label>
                     <input type="text"  class="form-control" name="quantityavailable"  value="${item.quantityavailable}" 
                     />
                  </div>
           
                   </center>   	
               	
              
                 <center> <button type="submit" class="button button2">Submit</button></center>
               
            </div>
         </div>
      </div>
      </form>
</body>
</html>