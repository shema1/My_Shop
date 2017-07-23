<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%--
  Created by IntelliJ IDEA.
  User: Mykola
  Date: 08.06.2017
  Time: 13:12
  To change this template use File | Settings | File Templates.
--%>

<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">

<!-- Optional theme -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">

<!-- Latest compiled and minified JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
<link rel="stylesheet" href="/css/profile.css">

<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<body class="color">
<ul>
	<div>
		<li class="row win">
			<div class="col-xs-4 col-sm-4 col-md-4">Photo</div>
			<div class="col-xs-3 col-sm-3 col-md-3">Name</div>
			<div class="col-xs-3 col-sm-3 col-md-3">Price</div>
			<div class="col-xs-2 col-sm-2 col-md-2">Option</div></li>


	</div>
</ul>

<br>

<span style="color: #DC3B3B">${buyException}</span>
<ul>


<c:forEach var="a" items="${user.commodities}">
	<li class="row asd">
		<div class="col-xs-4 col-sm-4 col-md-4">
			<img class="photo" src="${a.pathImage}" alt="cm.pathImage">
		</div>
		<div class="col-xs-4 col-sm-4 col-md-3">
	${a.name}

		</div>
		<div class="col-xs-4 col-sm-4 col-md-3">
				${a.price}

		</div>
		<div class="col-xs-4 col-sm-4 col-md-2">
		<a href="/deleteFromBasket/${user.id}/${a.id}">delete</a>
		</div>
	</li>
</c:forEach>
</ul>
<form:form action="/buy/${user.id}" method="post">
	<button  style="margin-left: 80%" class=" btn-lg btn-success">BUY</button>
</form:form>

</body>
<%--<ul>--%>
<%--<c:forEach var="history" items="${selUser.ordersses}">--%>
<%--${history.date}--%>

<%--</c:forEach>--%>
<%--</ul>--%>













<%--<form action="/addOrder" method="post">--%>
<%--<input type="date" name="date1" placeholder="date">--%>
		<%--<select name="com1">--%>
	<%--<q:forEach var="com1" items="${selCommodity}">--%>
		<%--<option value="${com1.id}">${com1.name}, ${com1.price}</option>--%>
	<%--</q:forEach>--%>
<%--</select>--%>
<%--<select name="user">--%>
<%--<q:forEach var="user" items="${selUser}">--%>
	<%--<option value="${user.id}">${user.name} </option>--%>
<%--</q:forEach>--%>
<%--</select>--%>
		<%--<button>Order</button>--%>
 		<%--<a href="/">home</a>--%>
 	<%--</form>--%>
 	<%----%>
 	<%--<ol>--%>
<%--<v:forEach var="all" items="${Order}">--%>
<%--<li>${all.date}<a href="/deleteOrder/${all.id}">  Delete</a>  </li>--%>
<%--</v:forEach>--%>
<%--</ol>--%>
</body>
</html>