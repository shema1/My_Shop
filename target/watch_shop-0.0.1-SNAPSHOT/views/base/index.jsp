<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
    <link rel="stylesheet" href="/css/index.css">
    <script src="//ajax.googleapis.com/ajax/libs/angularjs/1.1.5/angular.js"></script>
    <script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/1/jquery.min.js"></script>
    <script src="/js/index.js"></script>
</head>
<h1>WELCOME</h1>
<div id="slider">
    <a href="#" class="control_next">></a>
    <a href="#" class="control_prev"><</a>
    <ul>
        <c:forEach var="cm" items="${allCommoditys.content}">
            <li>  <img class="photo" src="${cm.pathImage}" alt="cm.pathImage"> </li>
        </c:forEach>
         </ul>
</div>

<div class="slider_option">
    <input type="checkbox" id="checkbox">
    <label for="checkbox">Autoplay Slider</label>
</div>


<%--<c:forEach var="cm" items="${allCommoditys.content}">--%>
    <%--<li>  <img class="photo" src="${cm.pathImage}" alt="cm.pathImage"> </li>--%>

<%--</c:forEach>--%>


</html>