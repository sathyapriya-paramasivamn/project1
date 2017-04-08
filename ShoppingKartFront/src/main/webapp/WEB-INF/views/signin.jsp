<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Login page</title>
<style>
<link rel="text/stylesheet">
form {
    border: 3px solid #f1f1f1;
}
body
{
background-color: transparent;
}
input[type=text], input[type=password] {
    border: 3px solid #555;
    width: 100%;
    padding: 12px 20px;
    margin: 8px 0;
    display: inline-block;
    border: 1px solid gray;
    box-sizing: border-box;
    background-color:darkgray;
    
}
button {
    background-color: #00802bs;
    color: black;
    padding: 14px 20px;
    margin: 8px 0;
    border: none;
    cursor: pointer;
    width: 100%;
    border-radius: 8px;
}
button:hover {
    opacity: 0.8;
}
.cancelbtn {
    background-color: #00802bs;
    color: black;
    padding: 14px 20px;
    margin: 8px 0;
    border: none;
    cursor: pointer;
    width: 100%;
    border-radius: 8px;
}
.imgcontainer {
    text-align: center;
    margin: 10px 0 10px 0;
}
img.avatar {
    width: 10%;
    border-radius: 20%;
}
.container {
    padding: 16px;
}
span.psw {
    float: right;
    padding-top: 16px;
}
/* Change styles for span and cancel button on extra small screens */
@media screen and (max-width: 300px) {
    span.psw {
       display: block;
       float: none;
    }
    .cancelbtn {
       width: 100%;
    }
}
</style>

</head>
<body>
<center><h2>Login Form</h2></center>

<form action="signin" method="post">
  <div class="imgcontainer">
    <img src="resources/images/u1.jpg" alt="user">
  </div>

  <div class="container">
    <label><b>Username</b></label>
    <input type="text" placeholder="Enter Username" name="mailid" required>                                  

    <label><b>Password</b></label>
    <input type="password" placeholder="Enter Password" name="password" required>
        
    <button type="submit">Login</a></button>
    <button type="button"><a href="cancel">Cancel</a></button>
    </div>
</form>
</body>
</html>