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
     
     <c:otherwise>HAi</c:otherwise>
     </c:choose> 
      
<fieldset>
<legend>LEHANGA</legend>
<table>
<tr>
<th>
<div class="img">
<div class="imgBox">
    <img src="resources/images/lehanga1.jpg" height="200" width="200" />
    <p>This is image 1</p>
  </div></div></th>
  <th><div class="img"><div class="imgBox">
    <img class="middle-img" src="resources/images/lehanga10.jpg"/ height="200" width="200" />
    <p>This is image 2</p>
  </div></div></th>
  <th>
  <div class="img"><div class="imgBox">
    <img src="resources/images/lehanga11.jpg" height="200" width="200" />
    <p>This is image 3</p>
  </div></th>
<th><div class="img"><div class="imgBox">
    <img src="resources/images/lehanga13.jpg" height="200" width="200" />
    <p>This is image 3</p>
  </div></th>
  <th><div class="img"><div class="imgBox">
    <img src="resources/images/lehanga2.jpg" height="200" width="200" />
    <p>This is image 3</p>
  </div></div></th>
</tr>
</div>
<tr>
<td><div class="img"><div class="imgBox">
    <img src="resources/images/lehanga23.jpg" height="200" width="200" />
    <p>This is image 1</p>
  </div></div></td>
<td>  <div class="img"><div class="imgBox">
    <img class="middle-img" src="resources/images/lehanga4.jpg"/ height="200" width="200" />
    <p>This is image 2</p>
  </div></div></td>
<td>  <div class="img"><div class="imgBox">
    <img src="resources/images/lehanga5.jpg" height="200" width="200" />
    <p>This is image 3</p>
  </div></div></td>
<td><div class="img"><div class="imgBox">
    <img src="resources/images/lehanga6.jpg" height="200" width="200" />
    <p>This is image 3</p>
  </div></div></td>
<td><div class="img"><div class="imgBox">
    <img src="resources/images/lehanga7.jpg" height="200" width="200" />
    <p>This is image 3</p>
  </div></div></td></tr>
  </table>
</div>
</div>
</fieldset>
<fieldset>
<legend>LEHANGA</legend>
<table>
<tr>
<th>
<div class="img">
<div class="imgBox">
    <img src="resources/images/lehanga1.jpg" height="200" width="200" />
    <p>This is image 1</p>
  </div></div></th>
  <th><div class="img"><div class="imgBox">
    <img class="middle-img" src="resources/images/lehanga10.jpg"/ height="200" width="200" />
    <p>This is image 2</p>
  </div></div></th>
  <th>
  <div class="img"><div class="imgBox">
    <img src="resources/images/lehanga11.jpg" height="200" width="200" />
    <p>This is image 3</p>
  </div></th>
<th><div class="img"><div class="imgBox">
    <img src="resources/images/lehanga13.jpg" height="200" width="200" />
    <p>This is image 3</p>
  </div></th>
  <th><div class="img"><div class="imgBox">
    <img src="resources/images/lehanga2.jpg" height="200" width="200" />
    <p>This is image 3</p>
  </div></div></th>
</tr>
</div>
<tr>
<td><div class="img"><div class="imgBox">
    <img src="resources/images/lehanga23.jpg" height="200" width="200" />
    <p>This is image 1</p>
  </div></div></td>
<td>  <div class="img"><div class="imgBox">
    <img class="middle-img" src="resources/images/lehanga4.jpg"/ height="200" width="200" />
    <p>This is image 2</p>
  </div></div></td>
<td>  <div class="img"><div class="imgBox">
    <img src="resources/images/lehanga5.jpg" height="200" width="200" />
    <p>This is image 3</p>
  </div></div></td>
<td><div class="img"><div class="imgBox">
    <img src="resources/images/lehanga6.jpg" height="200" width="200" />
    <p>This is image 3</p>
  </div></div></td>
<td><div class="img"><div class="imgBox">
    <img src="resources/images/lehanga7.jpg" height="200" width="200" />
    <p>This is image 3</p>
  </div></div></td></tr>
  </table>
</div>
</div>
</fieldset>
<fieldset>
<legend>LEHANGA</legend>
<table>
<tr>
<th>
<div class="img">
<div class="imgBox">
    <img src="resources/images/lehanga1.jpg" height="200" width="200" />
    <p></p>
  </div></div></th>
  <th><div class="img"><div class="imgBox">
    <img class="middle-img" src="resources/images/lehanga10.jpg"/ height="200" width="200" />
    <p>This is image 2</p>
  </div></div></th>
  <th>
  <div class="img"><div class="imgBox">
    <img src="resources/images/lehanga11.jpg" height="200" width="200" />
    <p>This is image 3</p>
  </div></th>
<th><div class="img"><div class="imgBox">
    <img src="resources/images/lehanga13.jpg" height="200" width="200" />
    <p>This is image 3</p>
  </div></th>
  <th><div class="img"><div class="imgBox">
    <img src="resources/images/lehanga2.jpg" height="200" width="200" />
    <p>This is image 3</p>
  </div></div></th>
</tr>
</div>
<tr>
<td><div class="img"><div class="imgBox">
    <img src="resources/images/lehanga23.jpg" height="200" width="200" />
    <p>This is image 1</p>
  </div></div></td>
<td>  <div class="img"><div class="imgBox">
    <img class="middle-img" src="resources/images/lehanga4.jpg"/ height="200" width="200" />
    <p>This is image 2</p>
  </div></div></td>
<td>  <div class="img"><div class="imgBox">
    <img src="resources/images/lehanga5.jpg" height="200" width="200" />
    <p>This is image 3</p>
  </div></div></td>
<td><div class="img"><div class="imgBox">
    <img src="resources/images/lehanga6.jpg" height="200" width="200" />
    <p>This is image 3</p>
  </div></div></td>
<td><div class="img"><div class="imgBox">
    <img src="resources/images/lehanga7.jpg" height="200" width="200" />
    <p>This is image 3</p>
  </div></div></td></tr>
  </table>
</div>
</div>
</fieldset>

 
</body>
</html>
