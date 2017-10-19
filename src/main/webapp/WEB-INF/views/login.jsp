<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<form action ="perform_login" method = "post">
<tr>
 <td colspan = "2"><center>login page</center></td>
</tr>

<tr>
  <td>Login ID</td>
  <td><input type = "text" name = "username" required/></td>
</tr>

<tr>
  <td>Password</td>
  <td><input type = "password" name = "password" required/></td>
</tr>

<tr>
  <td colspan = "2"><center><input type ="submit" value = "Login"/></td></center>
</form>

</body>
</html>