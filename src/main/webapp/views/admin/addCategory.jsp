<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="q"%>
    <%@ taglib uri="http://www.springframework.org/tags/form" prefix="sf"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
    <%--<link rel="stylesheet" href="/css/addCategory.css">--%>
</head>
<body class="color">


    <sf:form modelAttribute="Categoris" action="/addCategory" method="post">
       <div> <span style="color: #DC3B3B">${kolya}</span>
        <sf:input path="type"/>
       </div>
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