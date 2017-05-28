<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
     <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="x" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="sf"%>
   
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<div>

	<sf:form modelAttribute="Commoditis" method="post">
		<sf:input path="name"/>
		<sf:input path="price"/>
		<sf:select path="category" items="${allCategory}" itemLabel="type" itemValue="id" />
		<button>add</button>

		</sf:form>


<%--<form action="/addCommodity" method="post">--%>
		<%--<input type="text" name="name" placeholder="name">--%>
		<%--<input type="number" name="price" placeholder="price">--%>
		<%--<select name="ct">--%>
		<%----%>
	<%--<c:forEach var="ct" items="${allCategory}">--%>
		<%--<option value="${ct.id}">${ct.type}</option>--%>
	<%--</c:forEach>--%>
<%--</select>--%>
		<%--<button>add</button>--%>
 		<%--<a href="/">home</a> --%>
				<%----%>
<%--</form>--%>

<ol>
<x:forEach var="cm" items="${allCommodity}">
<li>${cm.name}, ${cm.price}<a href="/deleteCommodity/${cm.id}">  Delete</a>  </li>
</x:forEach>
</ol>

</body>
</html>


