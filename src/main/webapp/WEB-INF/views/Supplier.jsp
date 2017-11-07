<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" isELIgnored="false"%>

<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Supplier Page</title>
</head>
<h2><img src="resources/logo.jpg" class="img-rounded"  width="150" height="80"></h2> 
<jsp:include page="header.jsp"></jsp:include>
<h2></h2>
<body>
<body background="${pageContext.request.contextPath}/resources/green_background.jpg">
<form:form action="AddSupplier" modelAttribute="supplier">
<table align="center" cellspacing="2">
	<tr>
		<td colspan="2"><center>Supplier Module</center></td>
	</tr>
	<tr>
		<td>Supplier Id</td>
		<!-- <td><input type="text" name="supId"/></td> -->
		<td><form:input path="supId"/></td>
	</tr>
	<tr>
		<td>Supplier Name</td>
		<!-- <td><input type="text" name="supName"/></td> -->
		<td><form:input path="supName"/></td>
	</tr>
	<tr>
		<td>Supplier Desc</td>
		<!-- <td><input type="text" name="supDesc"/></td> -->
		<td><form:input path="supDesc"/></td>
	</tr>
	<tr>
		<td colspan="2">
		<br>
			<center><input type="submit" value="Insert"/></center>
		</td>
	</tr>
</table>
</form:form>

<table cell spacing="2" align="center">
<tr bgcolor="blue">
<td>Supplier Id</td>
<td>Supplier Name</td>
<td>Supplier Desc</td>
<td>Operation</td>
</tr>

<c:forEach items="${supplierList}" var="supplier">
		<tr bgcolor="pink">
			<td>${supplier.supId}</td>
			<td>${supplier.supName}</td>
			<td>${supplier.supDesc}</td>
			<td>
				<a href="<c:url value="deleteSupplier/${supplier.supId}"/>">DELETE</a>/
				<a href="<c:url value="updateSupplier/${supplier.supId}"/>">UPDATE</a>
			</td>
		</tr>
	</c:forEach>

</table>

</body>
<br>
<br>
<br>
<br>
<br>
<br>
<br>

<jsp:include page="footer.jsp" />
</html>