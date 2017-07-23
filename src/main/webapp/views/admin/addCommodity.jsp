<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
		 pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="x" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<!-- Latest compiled and minified CSS -->
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">

	<!-- Optional theme -->
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">

	<!-- Latest compiled and minified JavaScript -->
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>

	<link rel="stylesheet" href="/css/addComodity.css">
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<title>Insert title here</title>
</head>
<body class="back">



<form:form modelAttribute="Commoditis" action="/addCommodity?${_csrf.parameterName}=${_csrf.token}" method="post"  enctype="multipart/form-data" role="form" class="form-inline">

	<div class="form-group">
			<%--<span style="color: #DC3B3B">${commodityNameException}</span>--%>
		<label for="name">Name</label>
		<input path="name" class="form-control" name="name"/>
	</div>

	<div class="form-group">
	<%--<span style="color: #DC3B3B">${commodityPriceException}</span>--%>
	<label for="price">Price</label>
		<input path="price" name="price" class="form-control"/>
	</div>

		<%--<form:textarea path="info" />--%>
		<select name="ct" class="form-control">
			<c:forEach var="ct" items="${allCategory}">
				<option value="${ct.id}">${ct.type}</option>
			</c:forEach>
		</select>
	<button  class=" btn-sm btn-success">ADD</button>


		<strong class="alert alert-warning" role="alert">${commodityNameException} ${commodityPriceException} </strong>



		<input name="image"  type="file" class="btn btn-sm btn-success fixInput" />




	<%--<sf:select path="category" items="${allCategory}" itemLabel="type" itemValue="id" />--%>
	<%--<button>add</button>--%>

</form:form>



<ul>
<div>
	<li class="row win"><div class="col-xs-4 col-sm-4 col-md-4">Photo</div>
	<div class="col-xs-3 col-sm-3 col-md-3">Name</div>
	<div class="col-xs-3 col-sm-3 col-md-3">Price</div>
	<div class="col-xs-2 col-sm-2 col-md-2">Option</div></li>




	</div>
</ul>

	<ul>

		<x:forEach var="cm" items="${allCommodity}">
			<%--<td>${cm.pathImage}</td>--%>

		<li class="row win">
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
				<a href="/deleteCommodity/${cm.id}">  Delete</a>
					<a href="/updateCommodity/${cm.id}">update</a>
			</div>

		</li>

		</x:forEach>

	</ul>




</body>
</html>


