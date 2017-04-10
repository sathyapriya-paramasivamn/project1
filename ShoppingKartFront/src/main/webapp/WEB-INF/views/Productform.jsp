<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>

</head>
<body>
<fieldset>
<legend>Product</legend>
   <form action="addProduct" method="post" enctype="multipart/form-data">
   <table align="center" >
   
  <tr><td>product Name:</td>
  <td><input class="form-control" type="text" name="productName"></td></tr>
 <tr><td> Product Description:</td>
 <td><input class="form-control" type="text" name="productdescription"></td></tr>
 <tr><td>  Category:</td><td><select name="category">
   <option value="">select your category</option>
   	<c:forEach items="${categoryList}" var="category">
<option value="${category.categoryName}">${category.categoryName}</option>
</c:forEach>
</select></td></tr>
<tr><td>Supplier:</td><td><select name="supplier">
   <option value="">select your supplier</option>
   <c:forEach items="${supplierList}" var="supplier">	
   <option value="${supplier.name}">${supplier.name}</option>
   </c:forEach>
</select></td></tr>
<tr><td>Price:</td><td>
<input class="form-control" type="text" name="price"></td></tr>
<tr><td>stock:</td><td>
<input class="form-control" type="text" name="Stock"></td></tr>
<tr><td>file to upload:</td><td>
<input class="form-control" type="file" name="file"></td></tr>

<tr><td><input type="submit" name="submit" value="new product"></td></tr>

</table>
</form>
</fieldset>
</body>
</html>