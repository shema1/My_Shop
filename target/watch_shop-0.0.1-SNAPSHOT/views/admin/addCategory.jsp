<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="q"%>
    <%@ taglib uri="http://www.springframework.org/tags/form" prefix="sf"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<title>Insert title here</title>
    <link rel="stylesheet" href="/css/addCategory.css">
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">

<!-- Optional theme -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">

<!-- Latest compiled and minified JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<body class="color">


    <sf:form modelAttribute="Categoris" action="/addCategory" method="post">
       <div class="form-group">
           <label for="type">Category</label>
        <input type="text" path="type" name="type" class="form-control" placeholder="${categoryException}" />
       </div>
        <button  class=" btn-sm btn-success">ADD</button>
        <%--<strong class="alert alert-warning" role="alert">${categoryException}  </strong>--%>

    </sf:form>

<ol>
<q:forEach var="ct" items="${Category}">
<li>${ct.type}
    <a href="/deleteCategory/${ct.id}"> Delete</a>
</li>
 </q:forEach>
 </ol>

<%--<input  type="text" id="categoryName">--%>
    <%--<button id="saveCategory">save</button>--%>


    <%--<input type="hidden" name="csrf_name"--%>
        <%--value="${_csrf.parameterName}"/>--%>


    <%--<input type="hidden" name="csrf_value"--%>
           <%--value="${_csrf.token}"/>--%>

<%--<div >--%>
<%--<table class="table table-hover">--%>
    <%--<thead>--%>
    <%--<tr>--%>
        <%--<th>name</th>--%>
    <%--</tr>--%>
    <%--</thead>--%>
    <%--<tbody id="result">--%>
    <%--</tbody>--%>
<%--</table>--%>

<%--</div>--%>


</body>

<%--<script >--%>

    <%--document.getElementById('saveCategory').onclick = function () {--%>
    <%--}--%>

    <%--$('#saveCategory').click(function () {--%>

        <%--var category = {--%>
            <%--type:$ ('#categoryName').val()--%>
        <%--}--%>
        <%--$.ajax({--%>
            <%--url:"/addCategory?" + $('input[name=csrf_name]').val() + "=" + $('input[name=csrf_value]').val(),--%>
            <%--method: 'POST',--%>
            <%--dataType: 'json',--%>
            <%--contentType: 'application/json; charset=UTF-8',--%>
            <%--data: JSON.stringify(category),--%>

            <%--success : function (res) {--%>
                <%--var fromDb ='';--%>

                <%--for(var i in res){--%>

                    <%--fromDb += '<tr><td>'+res[i].type+ '</td></tr>';--%>
                <%--}--%>

                <%--$('#result').html(fromDb);--%>
            <%--}--%>

        <%--});--%>
    <%--});--%>

<%--</script>--%>
</html>