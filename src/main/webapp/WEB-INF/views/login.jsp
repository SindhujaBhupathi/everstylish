<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" isELIgnored="false"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
</head>
<body>
<h2><img src="resources/logo.jpg" class="img-rounded"  width="150" height="80"></h2> 

<jsp:include page="header.jsp"></jsp:include>

<form  method="post" action="j_spring_security_check" class="form-horizontal" >

	
	
<br>
<tr>
		<center><td colspan="2">Login</td></center>
	</tr>
	<br>
	<div class="form-group">
		<label for="User Email" class="col-xs-4 control-label">Email</label>
		<div class="col-xs-4">
			<input name="j_username" type="email"  placeholder=" User Email" class="form-control" />
		</div>
	</div>

	<div class="form-group">
		<label for="code" class="col-xs-4 control-label">Password</label>
		<div class="col-xs-4">
			<input name="j_password"  type="password" placeholder="User Password" class="form-control" />
		</div>
	</div>



	<div class="form-group">
	<label for="code" class="col-xs-4 control-label"></label>
		
		<div class="col-xs-4">
					
	
	<center><input type="submit" value="Login" id="btn-add" class="btn btn-primary" align="center"></center>
	
	</form>

		
		</div>
	</div>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>

	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>