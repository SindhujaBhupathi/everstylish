<%@ page language= "java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
   <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<html>

		<head>
  			<link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet" >
  			<link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet" >
  			<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  			<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  			<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
  			
  			<title>everstylish</title>
  			
		</head>
<h2><img src="resources/logo.jpg" class="img-rounded"  width="150" height="80"></h2> 
	<body>
	  
	  	<nav id ="navbar-red" class="nav navbar-inverse" role="navigation">
			
			<div class="container-fluid">
				<ul="nav navbar-nav">
					<button type="button"class="navbar-toggle collapsed datatoggle="collapse" data target="bs-example-nav">
						<span class="sr-only">toggle navigation</span>
						<span class="icon_bar"></span>
						<span class="icon_bar"></span>
						<span class="icon_bar"></span>
						<span class="icon_bar"></span>
		
						<span class="icon_bar"></span>
					</button>
				</ul>
				
			</div>
		
			<div class="collapse navbar-collapse"id=bs-example-nav>
		
			
				<ul class="nav navbar-right">
					
					  <sec:authorize access="!isAuthenticated()">
                    <li role="presentation"><a href="login">Login </a></li>
                    <li role="presentation"><a href="signUp">signUp </a></li>
                     </sec:authorize>
                    <sec:authorize access="isAuthenticated()">
                    <li>welcome : <sec:authentication property="principal.username" /></li>
                 <li><a href="<c:url value="j_spring_security_logout"/>">logout</a></li>
                 <li role="presentation"><a href="cart">cart</a></li> 
                  </sec:authorize>
	
				</ul>
	  		</div>
	  	</nav>
	 <!--  	======================== -->
	  	
	  	
	  	
	<c:forEach items="${pList}" var="product">
   
    <div class="container">
        <div class="row product">
            <div class="col-md-5 col-md-offset-0">
            <img src="/everstylish/myImage/imageDisplay?id=${product.productId}" alt="" width="300" height="200" /></div>
            <div class="col-md-7">
                <div class="table-responsive">
                    <table class="table">
                        <thead>
                            <tr>
                                <th>Specifications </th>
                                <th>Details </th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td> Name</td>
                                <td>${product.productName}</td>
                            </tr>
                            <tr>
                                <td>Price </td>
                                <td>${product.price} </td>
                            </tr>
                            <tr>
                                <td>Description</td>
                                <td>${product.productDesc} </td>
                            </tr>
                            <tr>
                                <td>colourS </td>
                                <td>gold,silver</td>
                            </tr>
                        </tbody>
                    </table>
                </div>
                <form:form action="addToCart/${product.productId}" method="POST">
                <button class="btn btn-default" type="submit">Add to cart</button>
                </form:form>
            </div>
        </div>
        
        <div class="media">
            <div class="media-body"></div>
        </div>
        <div class="media">
            <div class="media-body"></div>
        </div>
    </div>
    </c:forEach>  
	  
	  
	   <!--  	======================== -->
		
	  	
	</body>
</html>