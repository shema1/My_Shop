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
    <button >save</button>
</form:form >

<%--<script>--%>
    <%--var form = document.form1;--%>
    <%--document.write(form.name.value+ "<br/>");--%>
    <%--document.write(form.price.value+ "<br/>");--%>
    <%--document.write(form.info.value+ "<br/>");--%>


    <%--function check(form) {--%>
        <%--var name = form.name.value;--%>
        <%--var price = form.price.value;--%>
<%--//        var message = form.message.value;--%>
<%--//        var rules = form.rules.value;--%>
<%--//        var file = form.fileupload.value;--%>
        <%--var bad = "";--%>
        <%--if (name.length < 3)--%>
            <%--bad += "Имя слишком короткое" + "\n";--%>
        <%--if (name.length > 32)--%>
            <%--bad += "Имя слишком длинное" + "\n";--%>
        <%--if (price.length < 1)--%>
            <%--bad += "Пароль слишком короткий" + "\n";--%>
        <%--if (price.length > 32)--%>
            <%--bad += "Пароль слишком длинный" + "\n";--%>
<%--//        if (message.length < 3)--%>
<%--//            bad += "Сообщение слишком короткое" + "\n";--%>
<%--//        if (rules != "on")--%>
<%--//            bad += "Вы не согласились с правилами" + "\n";--%>
<%--//        if (file.length == 0)--%>
<%--//            bad += "Вы не выбрали файл для загрузки" + "\n";--%>
        <%--if (bad != "") {--%>
            <%--bad = "Неверно заполнена форма:" + "\n" + bad;--%>
            <%--alert(bad);--%>
            <%--return false;--%>
        <%--}--%>
        <%--return true;--%>
    <%--}--%>
<%--</script>--%>