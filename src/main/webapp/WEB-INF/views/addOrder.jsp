<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
        <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="q" %>
         <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="v" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<form action="/addOrder" method="post">
<input type="date" name="date1" placeholder="date">
		<select name="com1">
	<q:forEach var="com1" items="${selCommodity}">
		<option value="${com1.id}">${com1.name}, ${com1.price}</option>
	</q:forEach>
</select>
<select name="user">
<q:forEach var="user" items="${selUser}">
	<option value="${user.id}">${user.name} </option>
</q:forEach>
</select>
		<button>Order</button>
 		<a href="/">home</a>
 	</form>
 	
 	<ol>
<v:forEach var="all" items="${Order}">
<li>${all.date}<a href="/deleteOrder/${all.id}">  Delete</a>  </li>
</v:forEach>
</ol>
</body>
</html>