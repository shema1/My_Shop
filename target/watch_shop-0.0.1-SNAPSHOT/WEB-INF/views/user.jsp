<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<div style="text-align: center;margin-top: 5%">
		<form action="/user" method="post">
			<input type="text" name="name" placeholder="name">
			<br>
			<input type="email" name="email" placeholder="email">
			<br>
			<input type="password" name="password" placeholder="password">
			<br>
			<button>sign up</button>
			<a href="/">home</a>
			
			
		</form>
	</div>
	<ol>
			<c:forEach var="us" items="${users}">
			<li>${us.name}, ${us.email} <a href="/deleteUser/${us.id}">Delete</a>
			<a href="/update/${us.name}"></a> </li>
			</c:forEach>
			</ol>
</body>
</html>