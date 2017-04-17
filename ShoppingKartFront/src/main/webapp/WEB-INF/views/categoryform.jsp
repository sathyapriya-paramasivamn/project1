<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>category form</title>
<script type="text/javascript">
function formCategory() {
	// Make quick references to our fields
	var categoryName = document.getElementById('categoryName');
	var description = document.getElementById('description');
	if (notEmpty(categoryName, "categoryName Should not be empty")) {
		if (isAlphabet(categoryName, "Please enter only letters for Category")) {
			if (notEmpty(description, "Description Should not be empty")) {
				if (isAlphanumeric(description, "Please enter only letters and characters for Category")) {
				return true;
			}  
		}
	}
}
	return false;
}
function notEmpty(elem, helperMsg) {
	if (elem.value.length == 0) {
		alert(helperMsg);
		elem.focus(); // set the focus to this input
		return false;
	}
	return true;
}
function isAlphabet(elem, helperMsg) {
	var alphaExp = /^[a-z A-Z]+$/;
	if (elem.value.match(alphaExp)) {
		return true;
	} 
	else {
		alert(helperMsg);
		elem.focus();
		return false;
	}
}

function isAlphanumeric(elem, helperMsg) {
	var alphaExp = /^[0-9a-zA-Z]+$/;
	if (elem.value.match(alphaExp)) {
		return true;
	} else {
		alert(helperMsg);
		elem.focus();
		return false;
	}
}
</script>
</head>       
<body>
<form name="categoryform" action="addCategory" onsubmit="return formCategory()" method="post">
<table align="center">
 <tr><td> categoryName:</td>
  <td><input type="text" name="categoryName" Id="categoryName"></td></tr>
  <tr><td>category description :</td>
<td>  <input type="text" name="description" Id="description"></td></tr>
<tr>
<td>  <input type="submit" name="submit" value="new category"></td></tr>
</table>
</form>
</body>
</html>    