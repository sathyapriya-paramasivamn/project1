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
<legend> category</legend>
<form action="afterEdit" method="post">
categoryid:<br>
  <input type="text" name="id" value="${category.id}" readonly="true"><br>

  categoryname:<br>
  <input type="text" name="categoryName" value="${category.categoryName}"><br>
  categorydetails:<br>
  <input type="text" name="description" value="${category.description}">
  <input type="submit" name="submit">
</form>
</fieldset>
</body>
</html>