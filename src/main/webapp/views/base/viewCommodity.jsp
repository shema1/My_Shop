<%@ taglib prefix="q" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%--
  Created by IntelliJ IDEA.
  User: Mykola
  Date: 11.06.2017
  Time: 16:34
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <!-- Latest compiled and minified CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">

    <!-- Optional theme -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">

    <!-- Latest compiled and minified JavaScript -->
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>

    <link rel="stylesheet" href="/css/viewCommodity.css">
    <title>Title</title>
</head>
<body class="color ">

<ul>
    <div>
        <li class="row win"><div class="col-xs-4 col-sm-4 col-md-4">Photo</div>
            <div class="col-xs-3 col-sm-3 col-md-3">Name</div>
            <div class="col-xs-3 col-sm-3 col-md-3">Price</div>
            <div class="col-xs-2 col-sm-2 col-md-2">Option</div></li>


    </div>
</ul>

<ul>
    <q:forEach var="cm" items="${allCommoditys.content}">
        <li class="row asd">
            <div class="col-xs-4 col-sm-4 col-md-4">
                <img class="photo" src="${cm.pathImage}" alt="cm.pathImage">
            </div>
            <div class="col-xs-4 col-sm-4 col-md-3">
                    ${cm.name}
            </div>

            <div class="col-xs-4 col-sm-4 col-md-3">
                     ${cm.price}
            </div>
            <div class="col-xs-4 col-sm-4 col-md-2">
                <sec:authorize access="hasAnyRole('ROLE_USER')">
                <a href="/inBasket/${cm.id}">| in basket |</a>
                </sec:authorize>
            </div>
        </li>
    </q:forEach>
</ul>

<div class="page" id="q1q2">
<a href="/viewCommodity?page=${allCommoditys.number}&size=${allCommoditys.size}"> << previous |</a>
<a href="/viewCommodity?page=${allCommoditys.number+ 2}&size=${allCommoditys.size}">next >> </a>
</div>


<%--<a href="/ingredient?page=${ingredients.number}&size=${ingredients.size}">previous</a>--%>
<%--<a href="/ingredient?page=${ingredients.number+ 2}&size=${ingredients.size}">next</a>--%>

    <%--<q:forEach var="cm" items="${allCommoditys}">--%>

        <%--<li class="row border">--%>
           <%--<div class="col-xs-1 col-sm-3 col-md-4">--%>
               <%--<img class="photo" src="${cm.pathImage}" alt="cm.pathImage">--%>
           <%--</div>--%>
            <%--<div class="col-xs-1 col-sm-3 col-md-4">--%>
                <%--${cm.name}, ${cm.price}--%>
            <%--</div>--%>
            <%--<div class="col-xs-1 col-sm-3 col-md-4">--%>
            <%--<sec:authorize access="hasAnyRole('ROLE_USER, ROLE_ADMIN')">--%>
             <%--<a href="/inBasket/${cm.id}">| in basket |</a>--%>
        <%--</sec:authorize>--%>
            <%--</div>--%>
        <%--</li>--%>

    <%--</q:forEach>--%>







</body>
</html>
