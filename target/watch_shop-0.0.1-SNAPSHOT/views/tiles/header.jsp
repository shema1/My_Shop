<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 5/31/2017
  Time: 4:19 PM
  To change this template use File | Settings | File Templates.
--%>


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
                <a href="/"><spring:message code="label.Home" /> </a>
            </li>
            <li class="active">
                <a href="/viewCommodity"><spring:message code="label.Commodity" /></a>
            </li>
            <sec:authorize access="hasAnyRole('ROLE_USER')">
                <li class="active">
                    <a href="/profile"><spring:message code="label.profile" /></a>
                </li>
                <li class="active">
                    <a href="/addOrder"><spring:message code="label.Basket" /></a>
                </li>
            </sec:authorize>
            <sec:authorize access="!isAuthenticated()">
                <li class="active">
                    <a href="/signUp"><spring:message code="label.sign_up" /></a>
                </li>
            </sec:authorize>

            <sec:authorize access="hasRole('ROLE_ADMIN')">
                <li class="active">
                    <a href="/addCommodity"><spring:message code="label.add_Commodity" /></a>
                </li>
                <li class="active">
                    <a href="/addCategory"><spring:message code="label.add_Category" /></a>
                </li>

            </sec:authorize>

<span style="float: right">
                        <li><a href="?lang=ua">ua</a></li>
                        <li><a href="?lang=en">en</a></li>
</span>
            <sec:authorize access="isAuthenticated()">
                <li class="active">
                    <form:form action="/logout" method="post" cssStyle="float: right">
                        <button class="btn btn-default"><spring:message code="label.logout" /></button>
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