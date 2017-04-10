<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style>
<link rel="text/stylesheet">

header {
  height: 70px;
  width: 10%;
  position: absolute;
  top: 0px;
  background-color:;
}
body{
background color:#E0E0E0;
}
ul {
    list-style-type: none;
    margin: -5px;   
    overflow: hidden;
    background-color: none;
}
li {
    float: left;
}
li a {
    display: block;
    color: white;
    text-align:Right;
    padding: 5px 5px;
    text-decoration: none;
}
li a:hover:not(.active) {
    background-color:#E0E0E0;
}
.active {
    background-color:#FF4081;
}    
li a, .dropbtn {
    display: inline-block;
    color:#FF4081;
    text-align: center;
    padding: 14px 16px;
    text-decoration: none;
}
li a:hover, .dropdown:hover.dropbtn {
    background-color:#E0E0E0;
}
li.dropdown {
    display: inline-block;
}
.dropdown-content {
    display: none;
    position: absolute;
    background-color:#FF4081;
    min-width: 160px;
    box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
    z-index: 1;
}
.dropdown-content a {
    color: #FF4081;
   padding: 12px 16px;
    text-decoration: none;
    display: block;
    text-align: left;
}
.dropdown-content a:hover {background-color: #68EFAD;}
.dropdown:hover .dropdown-content {
    display: block;
}
div.container
{
        
font-family: Raleway;
margin: 0 auto;
padding: 1em 2em;
 text-align:left;
}
div.container a
{
    color: black;
    text-decoration: none;
    font: 20px Raleway;
    margin: 0px 5px;
    padding: 10px 10px;
    position: relative;
    z-index: 0;
    cursor: pointer;
}
.indigo
{
    background: #FF4081;
}
/* Top and Bottom borders come in */
div.topBotomBordersIn a:before, div.topBotomBordersIn a:after
{
    position: absolute;
    left: 0px;
    width: 100%;
    height: 1px;
    background:white;
    content: "";
    opacity: 0;
    transition: all 0.3s;
}
div.topBotomBordersIn a:before
{
    top: 0px;
    transform: translateY(-10px);
}
div.topBotomBordersIn a:after
{
    bottom: 0px;
    transform: translateY(10px);
}
div.topBotomBordersIn a:hover:before, div.topBotomBordersIn a:hover:after
{
    opacity: 1;
    transform: translateY(0px);
}
/* Top border go down and Left border appears */
div.topLeftBorders a:before
{
    position: absolute;
    top: 0px;
    left: 0px;
    width: 2px;
    height: 0px;
    background:white;
    content: "";
    opacity: 1;
    transition: all 0.3s;
}
div.topLeftBorders a:after
{
    position: absolute;
    top: 0px;
    left: 0px;
    width: 100%;
    height: 2px;
    background:white;
    content: "";
    opacity: 1;
    transition: all 0.3s;
}
div.topLeftBorders a:hover:before
{
    height: 100%;
}
div.topLeftBorders a:hover:after   
{
    opacity: 0;
    top: 100%;
}
.add-on .input-group-btn > .btn {
  border-left-width:0;left:-1px;
  -webkit-box-shadow: inset 0 1px 1px rgba(0, 0, 0, 0.075);
  box-shadow: inset 0 1px 1px rgba(0, 0, 0, 0.075);
}
</style>
</head>
<body>
<header>
<div class="container indigo topLeftBorders" >
<ul>
<li>
<div class="container">
<div>

   <li> <a href="home">Home</a> </li>
   <li><a href="trends">TRENDS</a></li>
<li><a href="t2cu" >T2CYOU</a></li>   
<li><a href="brands">BRANDS</a></li>
<li><a herf="collections">COLLECTION</a></li>
    <li class="dropdown"><div class="dropdown">
  <a href="javascript:void(0)" class="dropbtn">MYACCOUNT</button>
  <div class="dropdown-content">
     <c:if test="${pageContext.request.userPrincipal.name == null }">
      <a href="signin" >SIGNIN</a>
      <a href="newUser" >SIGNUP</a>
      </c:if>
      <c:if test="${pageContext.request.userPrincipal.name != null }">
      <a href="j_spring_security_logout">SIGNOUT</a>
       </c:if>
  </div>
</a>
<li>Welcome ${pageContext.request.userPrincipal.name}</li>
</div>
</li>
</ul>
</div>
</header>
</body>
</html>