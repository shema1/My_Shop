<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%--
  Created by IntelliJ IDEA.
  User: Mykola
  Date: 08.06.2017
  Time: 13:12
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">

<!-- Optional theme -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">

<!-- Latest compiled and minified JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
<link rel="stylesheet" href="/css/viewCommodity.css">


<ul>
    <c:forEach var="history" items="${selUser.ordersses}">

        <li class="row asd">

            <c:forEach var="a" items="${history.commoditys}">
                <div class="col-xs-4 col-sm-4 col-md-4">
                    <img class="photo" src="${a.pathImage}" alt="cm.pathImage">
                </div>

                <div class="col-xs-4 col-sm-4 col-md-4">
                        ${a.name}
                </div>


            </c:forEach>

            <div class="col-xs-4 col-sm-4 col-md-4">
        ${history.date}
            </div>



        </li>
    </c:forEach>
</ul>
