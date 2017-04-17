<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<script type="text/javascript">
	function formSupplier() {
		// Make quick references to our fields
		var name = document.getElementById('name');
		var mobileno = document.getElementById('mobileno');
		var mailid = document.getElementById('mailid');
		var address = document.getElementById('address');
		if (notEmpty(name, "Name Should not be empty")) {
			if (isAlphabet(name, "Please enter only letters for name")) {
				if (notEmpty(mobileno, "Mobilenumber Should not be empty")) {
					if (isNumeric(mobileno, "mobilenumber Should not be empty")) {
						if (notEmpty(mailid, "mailid Should not be empty")) {
							if (emailValidator(mailid,
									"Please enter only letters for mailid")) {
								if (notEmpty(address,
										"address Should not be empty")) {
									if (isAlphanumeric(address,
											"Please enter only letters and numbers for address")) {
										return true;
									}
								}
							}
						}
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
		} else {
			alert(helperMsg);
			elem.focus();
			return false;
		}
	}
	function emailValidator(elem, helperMsg) {
		var emailExp = /^[\w\-\.\+]+\@[a-zA-Z0-9\.\-]+\.[a-zA-z0-9]{2,4}$/;
		if (elem.value.match(emailExp)) {
			return true;
		} else {
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
	function isNumeric(elem, helperMsg) {
		var numericExpression = /^[0-9]+$/;
		if (elem.value.match(numericExpression)) {
			return true;
		} else {
			alert(helperMsg);
			elem.focus();
			return false;
		}
	}
</script>
<title>supplier form</title>
</head>
<body>
	<fieldset>
		<form name="Supplierform" action="addSupplier"
			onsubmit="return formSupplier()" method="post">
			<table align="center" cellspacing="10">
				<tr>
					<td>name:</td>
					<td><input type="text" name="name" Id="name"></td>
				</tr>
				<tr>
					<td>mobileno:</td>
					<td><input type="text" name="mobileno" Id="mobileno"></td>
				</tr>
				<tr>
					<td>emailId:</td>
					<td><input type="text" name="mailid" Id="mailid"></td>
				</tr>
				<tr>
					<td>address:</td>
					<td><input type="text" name="address" Id="address"></td>
				</tr>
				<tr>
					<td><input type="submit" name="submit" value="new supplier"></td>
				</tr>
			</table>
		</form>
	</fieldset>
</body>
</html>