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
<body class="color">

<div  class="row ">
    <div class="col-xs-12 col-sm-6 col-md-1 bak "></div>
  <div class="col-xs-12 col-sm-6 col-md-10 ">

    <nav class=" proba">
    <q:forEach var="cm" items="${allCommoditys}">

        <li class="border col-xs-1 col-sm-3 col-md-3"> ${cm.name}, ${cm.price}
            <sec:authorize access="hasAnyRole('ROLE_USER, ROLE_ADMIN')">
             <a href="/inBasket/${cm.id}">| in basket |</a>
        </sec:authorize>
        </li>

    </q:forEach>
    </nav>


  </div>
    <div class="col-xs-12 col-sm-6 col-md-1  bak"></div>
</div>

</body>
</html>
