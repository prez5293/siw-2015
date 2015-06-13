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
		
		<div class="panel panel-default">

			<table class="table">

				<tbody>

					<tr>
						<th scope="row">iva</th>
						<td>${providerController.provider.iva}</td>
					</tr>

					<tr>
						<th scope="row">Numero di telefono</th>
						<td>${providerController.provider.phoneNumber}</td>
					</tr>

					<tr>
						<th scope="row">Email</th>
						<td>${providerController.provider.email}</td>
					</tr>

					<tr>
						<th scope="row">Vatin</th>
						<td>${providerController.provider.vatin}</td>
					</tr>

					<tr>
						<th scope="row">Indirizzo</th>
						<td>${providerController.address.street}</td>
					</tr>

					<tr>
						<th scope="row">Citta</th>
						<td>${providerController.address.state}</td>
					</tr>

					<tr>
						<th scope="row">Cap</th>
						<td>${providerController.address.zipcode}</td>
					</tr>

					<tr>
						<th scope="row">Stato</th>
						<td>${providerController.address.country}</td>
					</tr>

				</tbody>
			</table>

		</div>



		<ul class="pager">
			<li><a href="<c:url value="/faces/indexadmin.jsp" />">Torna alla home</a></li>
		</ul>
		
	</f:view>
</body>
</html>