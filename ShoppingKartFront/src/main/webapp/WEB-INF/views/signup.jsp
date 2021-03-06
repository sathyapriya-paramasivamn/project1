<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style>
<link ref="text/stylesheet">
@import "bourbon";

$bezier: cubic-bezier(0.215, 0.610, 0.355, 1.000);
$time: 300ms;

$base-font-family: "Avenir Next", "Avenir", "Helvetica Neue", Helvetica, Arial, sans-serif;

@mixin animated(
  $time: 300ms,
  $fillmode: both,
  $count: 1) {
  animation-duration: $time;
  animation-fill-mode: $fillmode;
  animation-iteration-count: $count;
}

body {
  background-color: #363E4A;
  font-family: $base-font-family;
  font-size: 16px;
  color: #ffffff;
  line-height: 1.5;
}

h1 {
  font-family: "Texta", $base-font-family;
  font-weight: 700;
  text-transform: uppercase;
  letter-spacing: 4px;
  text-align: center;
}

h2 {
  font-weight: 400;
  font-size: 24px;
  color: rgba(255, 255, 255, .4);
}

/* .container {
  max-width: 200px;
  margin: 0 auto;
  padding: 20px 16px 40px 16px;
  
  text-align: left;
}
 */
.form-footer {
  margin-top: 1em;
}

.ui-input {
  position: relative;
  padding: 0;
  border: 0;
}

.ui-input input {
  border: 0;
  background: none;
  padding: 16px 0 16px 0;
  font-size: 24px;
  outline: 0;
  width: 100%;
  tap-highlight-color: rgba(0,0,0,0);
  touch-callout: none;
}

.ui-input input + label {
  position: relative;
  display: block;
  padding: 8px 0 8px 0;
  text-transform: uppercase;
  font-size: 14px;
  letter-spacing: .0875em;
  font-weight: 500;
  text-align: left;
  
  &::before, &::after {
    position: absolute;
    top: 0;
    left: 0;
    content: "";
    width: 100%;
    height: 1px;
  }
  
  &::before {
    background-color: rgba(255, 255, 255, .2);
  }
  
  &::after {
    transform: scaleX(0);
    transform-origin: left;
    transition: transform $time $bezier;
    background-color: #6EB1FF;
    height: 2px;
  }
  
  span {
    position: relative;
    color: rgba(255, 255, 255, .2);
    transition: color $time $bezier;
   
    &::after {
      content: attr(data-text);
      position: absolute;
      overflow: hidden;
      left: 0;
      transform: scaleX(1);
      white-space: nowrap;
      color: #fff;
      
      background-image: linear-gradient(to right,
          #4A90E2 50%,
          rgba(255,255,255,0) 0%);
      background-position: 100% 50%;
      background-size: 200%;
      -webkit-background-clip: text;
      -webkit-text-fill-color: transparent;
      
      backface-visibility: hidden;
      perspective: 1000;
      transform: translateZ(0);
      
      transition: background-position $time $bezier;
    }
  }
}

.ui-input input:focus,
.ui-input input.error,
.ui-input input:invalid,
.ui-input input.filled {
  
  & + label {
    
    &::after {
      transform: scaleX(1);
      transform-origin: left;
    }
    
    span::after {
      color: #464a4f;
      background-image: linear-gradient(to right,
      rgba(255,255,255,1) 50%,
      rgba(255,255,255,0) 0%);
      background-position: 0% 50%;
    }
  }
}

.ui-input input.filled {
  color: #ffffff;
  
  & + label {
    
    &::after {
      background-color: #ffffff;
    }
    
    span::after {
      background-image: linear-gradient(to right,
        #ffffff 50%,
        rgba(255,255,255,0) 0%);
      background-position: 0% 50%;
    }
  }
}

.ui-input input:focus {
  color: #6EB1FF;
  
  & + label {
    
    &::after {
      background-color: #6EB1FF;
    }
    
    span::after {
      background-image: linear-gradient(to right,
        #6EB1FF 50%,
        rgba(255,255,255,0) 0%);
      background-position: 0% 50%;
    }
  }
}

.ui-input input.error,
.ui-input input:invalid {
  color: #E66161;
  
  & + label {
    
    &::after {
      background-color: #E66161;
    }
    
    span::after {
      background-image: linear-gradient(to right,
        #E66161 50%,
        rgba(255,255,255,0) 0%);
      background-position: 0% 50%;
    }
  }
}

.btn {
  border: 0;
  background-color: #50617A;
  padding: 18px 30px 18px 30px;
  font-size: 18px;
  text-transform: uppercase;
  letter-spacing: .0875em;
  font-weight: 500;
  border-radius: 100px;
  outline: 0;
  transition: background-color $time $bezier,
              color $time $bezier;
}

.btn:focus,.btn:active,
.btn:hover {
  background-color: #6EB1FF;
  color: white;
}

.clearfix::after {
    content: "";
    clear: both;
    display: table;
}


.__first, .__second, .__third, .__fourth,._fivth,._sixth {
  animation-name: fadeIn;
  animation-duration: 180ms;
  animation-fill-mode: both;
  animation-iteration-count: 1;
}

.__first { animation-delay: 0; }
.__second { animation-delay: 40ms; }
.__third { animation-delay: 60ms; }
.__fourth { animation-delay: 800ms;}
.__fivth { animation-delay: 100ms; }
@keyframes fadeIn {
  from {
    opacity: 0;
    transform: translate3d(0, -25%, 0);
  }
  to {
    opacity: 1;
    transform: translate3d(0, 0, 0);
  }
}

</style>
<script>

var $input = $('.form-fieldset > input');

$input.blur(function (e) {
  $(this).toggleClass('filled', !!$(this).val());
});
function formSignup() {
	var name= document.getElementById('name');
	var mailid= document.getElementById('mailid');
	var mobilenumber= document.getElementById('mobilenumber');
	var address= document.getElementById('address');
	var password= document.getElementById('password');
	if (notEmpty(name, "name Should not be empty")) {
		if (isAlphabet(name, "Please enter only characters for name"))
	if (notEmpty(mailid, "mailid Should not be empty")) {
		if (emailValidator(mailid, "Please enter only validmail for mailid")) {
			if (notEmpty(mobilenumber, "mobilenumber Should not be empty")) {
				if (isNumeric(mobilenumber, "Please enter only valid number for mobilenumber")) {
					if (notEmpty(address, "address Should not be empty")) {
						if (isAlphanumeric(address, "Please enter only charcters and numbers for address")) {
			              if (notEmpty(password, "Description Should not be empty")) {
				              if (isAlphanumeric(password, "Please enter only letters and characters for password")) {
				return true;
			}  
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
</script>
</head>
<body>

<!-- <div class="container" > -->
  <h1>fabcollection</h1>
  <form name="signup" action="addUser" onsubmit="return formSignup()" style="width: 250px" method="post">    
    <fieldset class="form-fieldset ui-input __first">
      <input type="text" name="name" Id="name" tabindex="0" />
      <label for="username">
        <span >Username</span>
      </label>
    </fieldset>
    
    <fieldset class="form-fieldset ui-input __second">
      <input type="text" name="mailid" Id="mailid" tabindex="0" />
      <label for="mailid">
        <span >mailid</span>
      </label>
    </fieldset>
    
    <fieldset class="form-fieldset ui-input __third">
      <input type="text" name="mobileno" Id="mobilenumber" />
      <label for="mobilenumber">
        <span >Mobilenumber</span>
      </label>
    </fieldset>
    
    <fieldset class="form-fieldset ui-input __fourth">
      <input type="text" name="address" Id="address"/>
      <label for="address">
        <span >address</span>
      </label>
    </fieldset>
    <fieldset class="form-fieldset ui-input __fivth">
      <input type="password" name="password" Id="password"/>
      <label for="new-password">
        <span >Password</span>
      </label>
    </fieldset>
       
    <div class="form-footer">
      <div class="clearfix">
      <button type="reset" name="cancel" value="reset"  class="cancelbtn">Cancel</button>
      <button type="submit" class="signupbtn" value="new user">SignUp</button>
    </div>
    </div>
  </form>
<!-- </div> -->
</body>
</html>