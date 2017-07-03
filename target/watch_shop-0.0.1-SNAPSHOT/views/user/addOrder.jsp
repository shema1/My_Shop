<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%--
  Created by IntelliJ IDEA.
  User: Mykola
  Date: 08.06.2017
  Time: 13:12
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>


${user.name}
<br>

<c:forEach var="a" items="${user.commodities}">
	${a.name}<a href="/deleteFromBasket/${user.id}/${a.id}">delete</a>
	<br>
</c:forEach>

<form:form action="/buy/${user.id}" method="post">
	<button>buy</button>
</form:form>


<ul>
<c:forEach var="history" items="${selUser.ordersses}">
${history.date}

</c:forEach>
</ul>













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