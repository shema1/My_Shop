<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 5/31/2017
  Time: 4:19 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%--<header >--%>
    <%--<h1 style="text-align: center;"  >MEGA SHOP</h1>--%>
   <%--<sec:authentication property="name"></sec:authentication>--%>
    <%--<sec:authorize access="isAuthenticated()">--%>

    <%--<form:form action="/logout" method="post">--%>
    <%--<button class="btn btn-default">logout</button>--%>
<%--</form:form>--%>
    <%--</sec:authorize>--%>

    <%--<div style="text-align: center;margin-top: 5%">--%>
    <%--<a href="/testreg">TEST</a>--%>
    <%--<a href="/signUp">Sign up/Sign in</a>--%>
    <%--<a href="/viewCommodity"> Watch </a>--%>
   <%--<sec:authorize access="hasAnyRole('ROLE_ADMIN')">--%>
    <%--<a href="/addCommodity">addCommodity</a>--%>
    <%--<a href="/addCategory">addCategory</a>--%>
    <%--</sec:authorize>--%>
    <%--<sec:authorize access="hasAnyRole('ROLE_USER')">--%>
    <%--<a href="/addOrder">Basket</a>--%>
        <%--<a href="/profile">Profile</a>--%>
    <%--</sec:authorize>--%>

    <%--</div>--%>

<%--</header>--%>
<%--<br>--%>
<%--<br>--%>
<%--<br>--%>
<%--<br>--%>
<%--<br>--%>

<header class="header bor" role="banner">
    <link rel="stylesheet" href="/css/header.css">

    <nav>
        <ul>
            <li class="active">
                <a href="/">Home</a>
            </li>
            <li class="active">
                <a href="/viewCommodity">Commodity</a>
            </li>
            <sec:authorize access="hasAnyRole('ROLE_USER')">
                <li class="active">
                    <a href="/profile">profile</a>
                </li>
                <li class="active">
                    <a href="/addOrder">Basket</a>
                </li>
            </sec:authorize>
            <sec:authorize access="!isAuthenticated()">
                <li class="active">
                    <a href="/signUp">sign up</a>
                </li>
            </sec:authorize>

            <sec:authorize access="hasRole('ROLE_ADMIN')">
                <li class="active">
                    <a href="/addCommodity">add Commodity</a>
                </li>
                <li class="active">
                    <a href="/addCategory">add Category</a>
                </li>

            </sec:authorize>

            <sec:authorize access="isAuthenticated()">
                <li class="active">
                    <form:form action="/logout" method="post" cssStyle="float: right">
                        <button class="btn btn-default">logout</button>
                    </form:form>
                </li>
            </sec:authorize>
        </ul>
    </nav>
</header>
<br>
<br>
<br>
<br>
<br>