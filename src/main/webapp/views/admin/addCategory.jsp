<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="q"%>
    <%@ taglib uri="http://www.springframework.org/tags/form" prefix="sf"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>


    <sf:form modelAttribute="Categoris" action="/addCategory" method="post">
        <sf:input path="type"/>
        <button>add</button>
    </sf:form>
<%--<form action="/addCategory" method="post">--%>
<%--<input type="text" name="name">--%>
<%--<button>add</button>--%>
<%--<a href="/">home</a>--%>
<%--</form>--%>
<ol>
<q:forEach var="ct" items="${Category}"> 
<li>${ct.type}
    <a href="/deleteCategory/${ct.id}"> Delete</a>
</li>
 </q:forEach>
 </ol>
</body>
</html>