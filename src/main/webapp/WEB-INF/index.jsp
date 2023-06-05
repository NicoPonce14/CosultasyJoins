<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!-- c:out ; c:forEach etc. -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!-- Formatting (dates) -->
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!-- form:form -->
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!-- for rendering errors on PUT routes -->
<%@ page isErrorPage="true"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>WORLD</title>
<link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css">
<link rel="stylesheet" href="/css/main.css">
<!-- change to match your file/naming structure -->
<script src="/webjars/bootstrap/js/bootstrap.min.js"></script>
<script type="text/javascript" src="/js/app.js"></script>
<!-- change to match your file/naming structure -->
</head>
<body>
	<div class="container">
		<h1>worldDB</h1>
		<h4>Consulta 1</h4>
		<table class="table">
			<thead>
				<tr>
					<th scope="col">Pais</th>
					<th scope="col">Lenguaje</th>
					<th scope="col">Porcentaje lenguaje</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${hablaSloveno}" var="hablaSloveno">
					<tr>
						<td>${hablaSloveno[0]}</td>
						<td>${hablaSloveno[1]}</td>
						<td>${hablaSloveno[2]}</td>
					</tr>

				</c:forEach>
			</tbody>
		</table>
		<h4>Consulta 2</h4>
		<table class="table">
			<thead>
				<tr>
					<th scope="col">Pais</th>
					<th scope="col">N° ciudades</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${totalCiudadesPais}" var="totalCiudadesPais">
					<tr>
						<td>${totalCiudadesPais[0]}</td>
						<td>${totalCiudadesPais[1]}</td>
					</tr>

				</c:forEach>
			</tbody>
		</table>
		<h4>Consulta 3</h4>
		<table class="table">
			<thead>
				<tr>
					<th scope="col">Ciudad</th>
					<th scope="col">Poblacion</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${ciudadesMexico}" var="ciudadesMexico">
					<tr>
						<td>${ciudadesMexico[0]}</td>
						<td>${ciudadesMexico[1]}</td>
					</tr>

				</c:forEach>
			</tbody>
		</table>
		<h4>Consulta 4</h4>
		<table class="table">
			<thead>
				<tr>
					<th scope="col">Pais</th>
					<th scope="col">Lenguaje</th>
					<th scope="col">Porcentaje</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${mayora89}" var="mayora89">
					<tr>
						<td>${mayora89[0]}</td>
						<td>${mayora89[1]}</td>
						<td>${mayora89[2]}</td>
					</tr>

				</c:forEach>
			</tbody>
		</table>
		<h4>Consulta 5</h4>
		<table class="table">
			<thead>
				<tr>
					<th scope="col">Pais</th>
					<th scope="col">Area</th>
					<th scope="col">Poblacion</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${areaPob}" var="areaPob">
					<tr>
						<td>${areaPob[0]}</td>
						<td>${areaPob[1]}</td>
						<td>${areaPob[2]}</td>
					</tr>

				</c:forEach>
			</tbody>
		</table>
		<h4>Consulta 6</h4>
		<table class="table">
			<thead>
				<tr>
					<th scope="col">Pais</th>
					<th scope="col">Forma Gobierno</th>
					<th scope="col">Capital</th>
					<th scope="col">Esperanza de vida</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${monarquia}" var="monarquia">
					<tr>
						<td>${monarquia[0]}</td>
						<td>${monarquia[1]}</td>
						<td>${monarquia[2]}</td>
						<td>${monarquia[3]}</td>
					</tr>

				</c:forEach>
			</tbody>
		</table>
		<h4>Consulta 7</h4>
		<table class="table">
			<thead>
				<tr>
					<th scope="col">Pais</th>
					<th scope="col">Ciudad</th>
					<th scope="col">Distrito</th>
					<th scope="col">Poblacion</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${argentina}" var="argentina">
					<tr>
						<td>${argentina[0]}</td>
						<td>${argentina[1]}</td>
						<td>${argentina[2]}</td>
						<td>${argentina[3]}</td>
					</tr>

				</c:forEach>
			</tbody>
		</table>
		<h4>Consulta 8</h4>
		<table class="table">
			<thead>
				<tr>
					<th scope="col">Region</th>
					<th scope="col">N° Paises</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${sumarPaises}" var="sumarPaises">
					<tr>
						<td>${sumarPaises[0]}</td>
						<td>${sumarPaises[1]}</td>
					</tr>

				</c:forEach>
			</tbody>
		</table>
	</div>
</body>
</html>