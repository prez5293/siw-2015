<%@ taglib prefix="f" uri="http://java.sun.com/jsf/core"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="h" uri="http://java.sun.com/jsf/html"%>
<!DOCTYPE html>
<html>
<head>
<title>siw-2015</title>
</head>
<body>
	<f:view>
		<jsp:include page="header.jsp" />
		<h1>Registrazione avvenuta con successo</h1>

		<div class="panel panel-default">

			<table class="table">

				<tbody>

					<tr>
						<th scope="row">Nome</th>
						<td>${customerController.customer.firstName}</td>
					</tr>

					<tr>
						<th scope="row">Cognome</th>
						<td>${customerController.customer.lastName}</td>
					</tr>

					<tr>
						<th scope="row">Email</th>
						<td>${customerController.customer.email}</td>
					</tr>

					<tr>
						<th scope="row">Password</th>
						<td>${customerController.customer.password}</td>
					</tr>

					<tr>
						<th scope="row">Data di nascita</th>
						<td>${customerController.customer.dateOfBirth}</td>
					</tr>

					<tr>
						<th scope="row">Data di registrazione</th>
						<td>${customerController.customer.registrationDate}</td>
					</tr>

					<tr>
						<th scope="row">Via</th>
						<td>${customerController.address.street}</td>
					</tr>

					<tr>
						<th scope="row">Citta</th>
						<td>${customerController.address.state}</td>
					</tr>

					<tr>
						<th scope="row">Cap</th>
						<td>${customerController.address.zipcode}</td>
					</tr>

					<tr>
						<th scope="row">Stato</th>
						<td>${customerController.address.country}</td>
					</tr>

				</tbody>
			</table>

		</div>




		<ul class="pager">
			<li><a href="<c:url value="/faces/index.jsp" />">Torna alla home</a></li>
		</ul>

	</f:view>
</body>
</html>