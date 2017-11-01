<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet" >
<link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet" >
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
<title>everstylish</title>
</head>


<body>
<nav id="navbar-red" class="navbar-inverse" role="navigation">
<div class="container">
<ul class ="nav navbar-nav">
<button type = "button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="bs-example-nav">
<span class="sr-only">toggle navigation</span>
<span class ="icon-bar"></span>
<span class ="icon-bar"></span>
<span class ="icon-bar"></span>
<span class ="icon-bar"></span>
<span class ="icon-bar"></span>

</button></ul>
</div>
<div class ="collapse navbar-collapse" id ="bs-example-nav">
<ul class ="nav navbar-nav">

<li><a href="Home"><i class="fa fa-home" aria-hidden="true"></i>HOME</a></li>



<li><a href="category">Category</a></li>
<li><a href="supplier">Supplier</a></li>
<li><a href="product">Product</a></li>



</ul>

</ul>
    <ul class="nav navbar-nav navbar-right">
  
      
        
     <li><a href="cart"> <span class="glyphicon glyphicon-shopping-cart"></span> Cart  </a></li>
    </ul>
  

</div>
</nav>
</body>
</html>