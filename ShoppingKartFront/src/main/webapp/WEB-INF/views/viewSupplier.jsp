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
<center>List Of Suppliers</center>
<table cellspacing="10">
<tr>
<th>S.No</th>
<th>Supplier id</th>
<th>Supplier name</th>
<th>PhoneNumber</th>
<th>EmailId</th>
<th>Address</th>
<th>EDIT</th>
<th> DELETE</th>
</tr>
<c:forEach items="${supplierList}" var="supplier" varStatus="status">
<tr>
<td>${status.count}</td>
<td>${supplier.supplierid}</td>
<td>${supplier.name}</td>
<td>${supplier.phoneNo}</td>
<td>${supplier.emailId}</td>
<td>${supplier.address}</td>
<td><a href="editSupplier?supplierId=${supplier.supplierid}">EDIT</a></td>
<td><a href="deleteSupplier?supplierId=${supplier.supplierid}">DELETE</a></td>
</tr>
</c:forEach>
</table>
</body>
</html>