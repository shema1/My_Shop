<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<link rel="stylesheet" type="text/css" href="/css/signUp.css">
	<script src="/js/signUp.js"></script>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>

</head>
<body>
<%--<div style="text-align: center;margin-top: 5%">--%>
		<%--<form:form action="/signUp" method="post">--%>
			<%--<input type="text" name="name" placeholder="name">--%>
			<%--<br>--%>
			<%--<input type="email" name="email" placeholder="email">--%>
			<%--<br>--%>
			<%--<input type="password" name="password" placeholder="password">--%>
			<%--<br>--%>
			<%--<button>sign up</button>--%>
			<%--<a href="/">home</a>--%>
			<%----%>
			<%----%>
		<%--</form:form>--%>

			<%--<form:form action="/login" method="post">--%>
				<%--<input name="username"   placeholder="Username">--%>
				<%--<input name="password"   placeholder="Password">--%>
				<%--<button>Login</button>--%>

			<%--</form:form>--%>

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
			<form:form action="/login" method="post" name="login-form">
				<div class="form-fild">
					<span style="color: #DC3B3B">${usernameException}</span>
					<label for=""></label>
					<input type="text" placeholder="username" name="username">
				</div>
				<div class="form-fild">
					<label for=""></label>
					<input type="password" placeholder="password" name="password">
				</div>
				<span class="error"></span>
				<button type="submit">Submit</button>
			</form:form>
		</li>
		<li data-content="signup">
			<form:form  action="/signUp" method="post" name="signup-form">
				<div class="form-fild">
					<label for="name"></label>
					<input type="text" placeholder="username" name="name">
				</div>
				<div class="form-fild">
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
</body>
</html>



























