<%@ page language= "java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
   <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<html>

		<head>
  			<link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
  			<link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet" integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN" crossorigin="anonymous">
  			<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  			<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  			<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
  			
  			<title>everstylish</title>
		</head>
<h2><img src="resources/logo.jpg" class="img-rounded"  width="150" height="80"></h2> 
	<body>
	
	  <body background="${pageContext.request.contextPath}/resources/images/">
	  	<nav id ="navbar-red" class="navbar navbar-inverse"role="navigation">
			
			<div class="container-fluid">
				<ul class="nav navbar-nav">
					<button type="button"class="navbar-toggle collapsed datatoggle="collapse"data target="bs-example-nav">
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
				<ul class="nav navbar-nav">
					<li><a href="${pageContext.request.contextPath}/">HOME</a></li>
				</ul>
			
				<ul class="nav navbar-nav navbar-right">
					<sec:authorize access="!isAuthenticated()">
                    <li role="presentation"><a href="login">Login </a></li>
                    <li role="presentation"><a href="signUp">signUp </a></li>
                     </sec:authorize>
                    <sec:authorize access="isAuthenticated()">
                    <li role="presentation">welcome : <sec:authentication property="principal.username" /> </li>
                 <li><a href="<c:url value="j_spring_security_logout"/>">Logout</a></li>
                 <li role="presentation"><a href="cart">cart</a></li>
                  </sec:authorize>
	
				</ul>
	  		</div>
	  	</nav>
	 <!--  	======================== -->
	  	
	  <div class="container">
 
  <div id="myCarousel" class="carousel slide" data-ride="carousel">
    <!-- Indicators -->
    <ol class="carousel-indicators">
      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
      <li data-target="#myCarousel" data-slide-to="1"></li>
      <li data-target="#myCarousel" data-slide-to="2"></li>
    </ol>
	<div class="carousel-inner">
		  <div class="item active">
		   <img class="img-rounded" class="img-responsive center-block" src="resources/image0.jpg" style="width:100%;">
		 </div>
 
		<div class="item">
		   <img class="img-rounded" class="img-responsive center-block" src="resources/r6.jpg" style="width:100%;">
		</div>
		
		<div class="item">
		   <img class="img-rounded" class="img-responsive center-block" src="resources/image1.jpg" style="width:100%;">
		</div>
  
	</div>
  <!-- Left and Right controls-->
  
  <a class="left carousel-control" href="#myCarousel" data-slide="prev">
      <span class="glyphicon glyphicon-chevron-left"></span>
      <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#myCarousel" data-slide="next">
      <span class="glyphicon glyphicon-chevron-right"></span>
      <span class="sr-only">Next</span>
    </a>
</div>
</div>
	  	
	  	
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
		
	  	<jsp:include page="footer.jsp"></jsp:include>
	</body>
</html>