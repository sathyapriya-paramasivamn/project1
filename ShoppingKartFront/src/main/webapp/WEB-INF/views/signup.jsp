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

/*  .container {
  max-width: 320px;
  margin: 0 auto;
  padding: 20px 16px 40px 16px;
  
  text-align: center;
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
      //color: #4A90E2;
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
.__second { animation-delay: 80ms; }
.__third { animation-delay: 100ms; }
.__fourth { animation-delay: 1800ms;}
.__fivth { animation-delay: 1800ms; }
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


</script>
</head>
<body>

<!-- <div class="container" > -->
  <h1>fabcollection</h1>
  
  <form action="addUser"  style="width: 250px" method="post">    
    <fieldset class="form-fieldset ui-input __first">
      <input type="text" name="username" tabindex="0" />
      <label for="username">
        <span >Username</span>
      </label>
    </fieldset>
    
    <fieldset class="form-fieldset ui-input __second">
      <input type="text" name="mailid" tabindex="0" />
      <label for="mailid">
        <span >mailid</span>
      </label>
    </fieldset>
    
    <fieldset class="form-fieldset ui-input __third">
      <input type="text" name="mobileno" />
      <label for="mobilenumber">
        <span >Mobilenumber</span>
      </label>
    </fieldset>
    
    <fieldset class="form-fieldset ui-input __fourth">
      <input type="text" name="address"/>
      <label for="address">
        <span >address</span>
      </label>
    </fieldset>
    <fieldset class="form-fieldset ui-input __fivth">
      <input type="password" name="password" />
      <label for="repeat-new-password">
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