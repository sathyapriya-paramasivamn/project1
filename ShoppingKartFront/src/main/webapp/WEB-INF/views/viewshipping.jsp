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
center>List Of Shipping</center>
<table cellspacing="10">
<tr>
<th>S.No</th>
<th>Shipping id</th>
<th></th>
<th>r</th>
<th></th>
<th></th>
<th>EDIT</th>
<th> DELETE</th>
</tr>
<c:forEach items="${shippingList}" var="shipping" varStatus="status">
<tr>
<td>${status.count}</td>
<td>${shipping.shippingid}</td>
<td>${shipping.name}</td>
<td>${shipping.phoneNo}</td>
<td>${shipping.mailid}</td>
<td>${shipping.address}</td>
<td><a href="editShipping?shippingId=${shipping.shippingid}">EDIT</a></td>
<td><a href="deleteShipping?shippingId=${shipping.shippingid}">DELETE</a></td>
</tr>
</c:forEach>
</table>
</body>
</html>