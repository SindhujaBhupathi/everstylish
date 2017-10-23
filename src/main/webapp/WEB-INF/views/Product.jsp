<%@ page language="java" import="com.everstylish.model.Product" contentType="text/html"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Product page</title>
</head>
<h2><img src="resources/logo.jpg" class="img-rounded"  width="150" height="80"></h2> 
<jsp:include page="header.jsp"></jsp:include>
<body>
<c:url var="actionUrl" value="saveProduct" />
<form:form action="InsertProduct" modelAttribute="product" enctype = "multipart/form-data">
<table align="center"></table>
<tr>
  <td>colspan="2">Product Details</td>
</tr>

<tr>
  <td>Product ID</td>
  <td><form:input path="productid"/></td>
</tr>

<tr>
  <td>Product Name</td>
  <td><form:input path="productname"/></td>
</tr>
<tr>
  <td>Product Desc</td>
  <td><form:textarea path="productdesc"/></td>
</tr>
<tr>
  <td>Product Stock</td>
  <td><form:input path="productstock"/></td>
</tr>
<tr>
  <td>Product Price</td>
  <td><form:input path="productprice"/></td>
</tr>
<tr>
  <td>Category</td>
  <td>
  <form:select path="catid"/>
  <form:option value="0" label="--select--"/>
  <form:optional items="${categoryList}"/>
 
  
  </td>
</tr>
<tr>
  <td>Supplier</td>
  <td><form:input path="supplierid"/></td>
</tr>
   
<tr>
		<td>Product Image</td>
		<td><form:input type="file" path="pimage"/></td>
	</tr>


 <tr>
  <tdcolspan="2">
   <center><input type="submit" value="insert"/>
   </center>   </td>
  
</tr>
</form:form>
</table>

</body>
</html>