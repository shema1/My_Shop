<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Mykola
  Date: 04.07.2017
  Time: 12:04
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<form:form modelAttribute="commodity"  action="/updateCommodity/${commodity.id}?${_csrf.parameterName}=${_csrf.token}" method="post" enctype="multipart/form-data">

    <input name="name" type="text"
           value="${commodity.name}" />

    <input name="price" type="number"
           value="${commodity.price}" />
    <input name="info" type="text"
           value="${commodity.info}" />
    <select name="ct">
        <c:forEach var="ct" items="${allCategory}">
            <option value="${ct.id}">${ct.type}</option>
        </c:forEach>
    </select>
    <input name="pathImage" type="file" value="${commodity.pathImage}"/>
    <button>save</button>
</form:form>

