<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%--
  Created by IntelliJ IDEA.
  User: Mykola
  Date: 08.06.2017
  Time: 13:12
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>


<%--<ul>--%>
    <%--<c:forEach var="history" items="${qwer.ordersses}">--%>
       <%--<li> ${history.date}</li>--%>

    <%--</c:forEach>--%>
<%--</ul>--%>

<ul>
    cnh
    <c:forEach var="qaz" items="${qwer.ordersses}">
        <li> ${qaz.date}</li>
    </c:forEach>
</ul>