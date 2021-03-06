<%@ page language="java" import="com.everstylish.model.Product" contentType="text/html"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>product</title>
</head>
<h2><img src="resources/logo.jpg" class="img-rounded"  width="150" height="80"></h2> 
<jsp:include page="header.jsp"></jsp:include>
<body>

<body background="${pageContext.request.contextPath}/resources/green_background.jpg">

	 
	<h3>
		<c:if test="${product.productId==0}">
		     
	            </c:if>
			<c:if test="${!empty product.productId}">
		      <c:out value="${product.productId}" />
				 
			</c:if>
			</h3>
		
		<form:form action="saveProduct" modelAttribute="product" enctype="multipart/form-data" id="btn-add">
		<table align="center">
		
			<tr>
				<td colspan="2"><center>Product Detail</center></td>
			</tr>	
			<form:hidden path="productId"/> 
	
				 <tr>
					<td></td>
					<!-- <td><input type="text" name="catName"/></td> -->
					<td><form:input path="productId" type="hidden"/></td>
				</tr>
		
			<tr>
				<td>Product Name</td>
				<td><form:input path="productName"/></td>
			</tr>
	
			<tr>
				<td>Product Desc</td>
				<td><form:textarea path="productDesc"/></td>
			</tr>
	
	
			<tr>
				<td>Product Stock</td>
				<td><form:input path="stock"/></td>
			</tr>
	
	
			<tr>
				<td>Product Price</td>
				<td><form:input path="price"/></td>
			</tr>
	
	

	
			<tr>
				<td>Category</td>
				<td>
					<form:select path="catId">
					<form:option value="0" label="---Select---"/>
					<form:options items="${categoriesList}" />
					</form:select>
				</td>
			</tr>



			<tr>
				<td>Supplier</td>
				<td>
					<form:select path="supplierId">
					<form:option value="0" label="---Select---"/>
					<form:options items="${suppliersList}" />
				
					</form:select>
				</td>
			</tr>
	
	
			<tr>
				<td>Product Image</td>
				<td><input type="file" name= "file"></td>
			</tr> 
	
	
			<tr>
				<td colspan="2">
				
				
				
					 <c:if test="${product.productId==0}"> 
		<input type="submit" value="Add Product" id="btn-add" class="btn btn-primary" >
		
	 	</c:if> <c:if test="${product.productId!=0}">
	   <input type="submit" value="updateProduct" id="btn-update" class="btn btn-primary" >
	  </c:if> 
				</td>
			</tr>
	
		</table>
		</form:form>


		<table cellspacing="2" align="center">
				<tr bgcolor="gray">
					<td>Product ID</td>
					<td>Product Name</td>
					<td>Product Description</td>
					<td>Product Stock</td>
					<td>Product Price</td>
					<td>Category</td>
					<td>Supplier</td>
					<td>Product Image</td>
				</tr>
	
	
		<c:forEach items="${productList}" var="product">
			<tr bgcolor="cyan">
				<td>${product.productId}</td>
				<td>${product.productName}</td>
				<td>${product.productDesc}</td>
				<td>${product.stock}</td>
				<td>${product.price}</td>
				<td>${product.catId}</td>
				<td>${product.supplierId}</td>
				<td>${product.image}</td>
				<td>
			
						<a href="<c:url value="deleteProduct/${product.productId}"/>">DELETE</a>
						<a href="<c:url value="updateProduct/${product.productId}"/>">UPDATE</a>
				</td>
			</tr>
		</c:forEach></table>

</body>
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
<jsp:include page="footer.jsp" />
</html>