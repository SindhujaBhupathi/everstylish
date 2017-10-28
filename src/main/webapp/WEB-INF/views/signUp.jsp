<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" isELIgnored="false"%>

<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet" >
<link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet" >
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Sign Up Page</title>
</head>

<h2><img src="resources/logo.jpg" class="img-rounded"  width="150" height="80"></h2> 
<jsp:include page="header.jsp"></jsp:include>
<body>


<c:url var="actionUrl" value="saveUser" />

<form:form  commandName="user" method="post" action="${actionUrl }" class="form-horizontal" >

<br>
<br>
	<div class="form-group">
		<label for="username" class="col-xs-4 control-label">userName</label>
		<div class="col-xs-4">
			<form:input name="id" path="username" placeholder="username" class="form-control" />
		</div>
	</div>
	
	

	<div class="form-group">
		<label for="Supplier Name" class="col-xs-4 control-label">Email</label>
		<div class="col-xs-4">
			<form:input name="id" path="email" placeholder="User Name" class="form-control" />
		</div>
	</div>

	<div class="form-group">
		<label for="code" class="col-xs-4 control-label">Password</label>
		<div class="col-xs-4">
		<input id="password" class="form-control" type="password" value="123" placeholder="password" />
		
		 <!-- 	<form:input name="password"  path="password" id="password" placeholder="User Password" class="form-control" />-->
	<!-- 	<form:input type="password" name="password" id="password" path="password" maxlength="10" class="form-control" /> -->	
		</div>
	</div>

	<div class="form-group">
		<label for="code" class="col-xs-4 control-label">contact</label>
		<div class="col-xs-4">
			<form:input name="contact"  path="contact" placeholder="User contact" class="form-control" />
		</div>
	</div>



	<div class="form-group">
	<label for="code" class="col-xs-4 control-label"></label>
		
		<div class="col-xs-4">
		
			
	
		<center><input type="submit" value="Add User" id="btn-add" class="btn btn-primary" ></center>
	</div>
	</div>
</form:form>