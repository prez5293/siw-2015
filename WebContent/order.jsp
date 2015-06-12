<%@ taglib prefix="f" uri="http://java.sun.com/jsf/core"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="h" uri="http://java.sun.com/jsf/html"%>
<!DOCTYPE html>
<html>
<head>
<title>Product</title>
</head>
<body>
	<f:view>

		<jsp:include page="header.jsp" />
		<h1>
			Data creazione: <small>${orderController.order.creationTime}</small>
		</h1>

		<h2>Dettagli</h2>


		<h:form>
		<div class="panel panel-default">


			<table class="table">
				<thead>
					<tr>
						<th>#</th>
						<th>Nome</th>
						<th>Quantita</th>
						<th>Prezzo Totale</th>
					</tr>
				</thead>
				<tbody>

					<c:forEach var="orderLine" items="#{orderController.order_lines}">
						<tr>
							<th scope="row">#</th>
							<td>${orderLine.product.name}</td>
							<td>${orderLine.quantity}</td>
							<td>${orderLine.unitPrice}</td>
						</tr>




					</c:forEach>

				</tbody>
			</table>
		</div>


			<ul class="pager">
				<li><a href="<c:url value="/faces/orders.jsp" />">Torna
						alla lista di ordini</a></li>
			</ul>




		</h:form>


	</f:view>
</body>
</html>