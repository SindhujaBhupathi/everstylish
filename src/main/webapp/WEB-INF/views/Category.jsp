<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" isELIgnored="false"%>

<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Category Page</title>
</head>
<h2><img src="resources/logo.jpg" class="img-rounded"  width="150" height="80"></h2> 
<jsp:include page="header.jsp"></jsp:include>
<h2></h2>
<body>
<form:form action="AddCategory" modelAttribute="category">
<table align="center" cellspacing="2">
	<tr>
		<td colspan="2"><center> Category Module</center></td>
		
	</tr>
	
	<tr>
		<td>Category ID</td>
		<!--<td><input type="text" name="catId"/></td>-->
		<td><form:input path="catId"/></td>
	</tr>
	<tr>
		<td>Category Name</td>
		<!-- <td><input type="text" name="catName"/></td> -->
		<td><form:input path="catName"/></td>
	</tr>
	<tr>
		<td>Category Desc</td>
		<!-- <td><input type="text" name="catDesc"/></td> -->
		<td><form:input path="catDesc"/></td>
	</tr>
	<tr>
		<td colspan="2">
			<center><input type="submit" value="Insert"/></center>
		</td>
	</tr>
</table>
</form:form>

<table cell spacing="2" align="center">
<tr bgcolor="blue">
<td>Category ID</td>
<td>Category Name</td>
<td>Category Desc</td>
<td>Operation</td>
</tr>

<c:forEach items="${categoryList}" var="category">
		<tr bgcolor="pink">
			<td>${category.catId}</td>
			<td>${category.catName}</td>
			<td>${category.catDesc}</td>
			<td>
				<a href="deleteCategory/${category.catId}">DELETE</a>/
				<a href="updateCategory/${category.catId}">UPDATE</a>
			</td>
		</tr>
	</c:forEach>

</table>

</body>
</html>