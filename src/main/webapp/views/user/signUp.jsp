<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html ng-app="myApp">
<head>
	<link rel="stylesheet" type="text/css" href="/css/signUp.css">
	<script src="/js/signUp.js"></script>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>

</head>
<body>


	</div>
<img src="http://image005.flaticon.com/1/svg/74/74229.svg" alt="user icon" class="logo">
<div class="cd-tabs">
	<nav>
		<ul class="cd-tabs-navigation">
			<li><a href="#" data-content="login" class="selected">login</a></li>
			<li><a href="#" data-content="signup">signup</a></li>
		</ul>
	</nav>
	<ul class="cd-tabs-content">
		<li data-content="login" class="selected">
			<form:form action="/login" method="post" name="login-form" onsubmit="return TestLogin1(this.username.value,this.password.value)"  >
				<div class="form-fild">
					<input type="text" placeholder="username" name="username" >
				</div>
				<div class="form-fild">

					<input type="password" placeholder="password" name="password">
				</div>
				<span class="error"></span>
				<button>Submit</button>
			</form:form>
		</li>
		<li data-content="signup">
			<form:form  action="/signUp" method="post" name="signup-form" onsubmit="return TestLogin2(this.name.value, this.password.value, this.email.value)">
				<div class="form-fild">
					<span style="color: #DC3B3B">${usernameException}</span>
					<label for="name"></label>
					<input type="text" placeholder="username" name="name">
				</div>
				<div class="form-fild">
					<span style="color: #DC3B3B">${emailException}</span>
					<label for="email"></label>
					<input type="email" placeholder="email" name="email" >
				</div>
				<div class="form-fild">
					<label for=""></label>
					<input type="password" placeholder="pass" name="password">
				</div>
				<span class="error"></span>
				<button type="submit">Submit</button>
			</form:form>
		</li>
	</ul>
</div>

	<script type="text/javascript">

        function TestLogin1(username , password){

//            if(/^[a-zA-z]{1}[a-zA-Z1-9]{3,20}$/.test(username) === false)
//            {alert('Field username is empty'); return false;}

            if(username.length < 4 || username.length > 20)
            { alert('The login must be between 4 and 20 characters'); return false;}

            if(/^[a-zA-Z1-9]+$/.test(username) === false)
            {alert('Only latin letters'); return false;}

            if(parseInt(username.substr(0, 1)))
            {alert('Login must begin with a letter'); return false;}



            if(password.length < 4 || password.length > 20)
            { alert('The password must be between 4 and 20 characters'); return false;}

            if(/^[a-zA-Z1-9]+$/.test(password) === false)
            {alert('Only latin letters'); return false;}

            return true;
        }


        function TestLogin2(name  , password, email){
//            if(/^[a-zA-z]{1}[a-zA-Z1-9]{3,20}$/.test(username) === false)
//            {alert('Field username is empty'); return false;}

//            if(/^[a-zA-z]{1}[a-zA-Z1-9]{3,20}$/.test(name) === false)
//            {alert('Field name-login is empty'); return false;}
//            return true;


            if(name.length < 4 || name.length > 20)
            { alert('The login must be between 4 and 20 characters'); return false;}

            if(/^[a-zA-Z1-9]+$/.test(name) === false)
            {alert('Only latin letters'); return false;}

            if(parseInt(name.substr(0, 1)))
            {alert('Login must begin with a letter'); return false;}

            if(email.length < 1 || email.length > 20)
            { alert('field  email is empty'); return false;}


            if(password.length < 4 || password.length > 20)
            { alert('The password must be between 4 and 20 characters'); return false;}

            if(/^[a-zA-Z1-9]+$/.test(password) === false)
            {alert('Only latin letters'); return false;}
        }

	</script>
</body>
</html>



























