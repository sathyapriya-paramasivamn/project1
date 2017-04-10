<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<title>Shopping Cart</title>
	  
<style>
<link rel="text/stylesheet">
@import url(http://fonts.googleapis.com/css?family=Open+Sans:400,300,600);	

html {
  border-top: 5px solid #fff;
  background:#E0E0E0;
  color:black;
}

html, body {
  margin: 0;
  padding: 0;
  font-family: 'Open Sans';
}

 div.img {
      display:inline-block;
    }

    p {
      text-align:center;
    }
    .imgBox:hover
     { -moz-box-shadow: 0 0 10px #ccc; 
     -webkit-box-shadow: 0 0 10px #ccc; 
     box-shadow: 0 0 10px #ccc;
      } 

</style>
</head>
<body>

<%@include file="/WEB-INF/views/Menu.jsp" %> 
 <%@include file="/WEB-INF/views/carousel.jsp" %>
  
  <c:choose>
     <c:when test="${not empty loginButtonClicked}">    
     
      <%@include file="/WEB-INF/views/signin.jsp" %>
     </c:when>
     
     <c:when test="${not empty signupButtonClicked}">
     
    <%@include file="/WEB-INF/views/signup.jsp" %>
     </c:when>
     
     <c:otherwise><%@include file="/WEB-INF/views/productList.jsp" %>
     </c:otherwise>
     </c:choose> 
      

 
</body>
</html>
