<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<style>
<link ref="text/stylesheet">
 .button {
    background-color:#FF4081;
    border: none;
    color:black;
    /* padding: 15px 32px; 
    text-align: center;
    text-decoration: none;
    display: inline-block;
    font-size: 16px;
    /* margin: 4px 2px; */
    cursor: pointer;
 */    width:150px;
}

</style>
</head>
<body>
<table cellspacinng="10">
<tr>
<td>
<img src="resources/images/products/${product.productid}.jpg" width="550" height="550">
</td>
<td style="color: red;"><h2>${msg }</h2></td>
<td><button class="button"><a href="addToCart?productId=${product.productid}">ADDTOCART</a></button></td>
<br> 
<td><button class="button">GOBACK</button></td>
</tr>
</table>
</body>
</html>