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

<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">

<!-- Optional theme -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">

<!-- Latest compiled and minified JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>

<link rel="stylesheet" href="/css/addComodity.css">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<body class="back">
<form:form modelAttribute="commodity"  action="/updateCommodity/${commodity.id}?${_csrf.parameterName}=${_csrf.token}" method="post" enctype="multipart/form-data">

    <div class="form-group">
        <label for="name">Name</label>
    <input name="name" type="text"
           value="${commodity.name}" />
    </div>
    <div class="form-group">
        <label for="price">Price</label>
    <input name="price" type="number"
           value="${commodity.price}" />
    <%--<input name="info" type="text"--%>
           <%--value="${commodity.info}" />--%>
    </div>
    <select name="ct" class="form-control" STYLE="width: 20%">
        <c:forEach var="ct" items="${allCategory}">
            <option value="${ct.id}">${ct.type}</option>
        </c:forEach>
    </select>
    <input name="pathImage" class="btn btn-sm btn-success fixInput"  type="file" value="${commodity.pathImage}"/>
    <button class=" btn-sm btn-success" style="margin-left: 1%" >save</button>
</form:form >

</body>
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