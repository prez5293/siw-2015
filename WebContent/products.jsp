<%@ taglib prefix="f" uri="http://java.sun.com/jsf/core"%>
<%@ taglib prefix="h" uri="http://java.sun.com/jsf/html"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=US-ASCII">
<title>Products</title>
</head>
<body>
	<f:view>
		<jsp:include page="header.jsp" />

		<h1>I nostri prodotti</h1>

		<c:if test="${orderController.orderLine != null}">
			<div class="panel panel-default">


				<table class="table">
					<thead>
						<tr>
							<th>Carrello</th>
						</tr>
						<tr>
							<th>#</th>
							<th>Nome</th>
							<th>Quantita</th>
							<th>Prezzo Totale</th>
						</tr>
					</thead>
					<tbody>

						<c:forEach var="orderLine" items="#{orderController.cart}">
							<tr>
								<th scope="row">#</th>
								<td>${orderLine.product.name}</td>
								<td>${orderLine.quantity}</td>
								<td>${orderLine.unitPrice}</td>
							</tr>

						</c:forEach>
						<tr>
							<td colspan="4"><h:form>
									<h:commandLink
										styleClass="btn btn-primary" style="margin-left:45%;"
										action="#{orderController.closeOrder}" value="Termina ordine" />
								</h:form></td>
						
						</tr>

					</tbody>

				</table>
			</div>

		</c:if>

		<c:if test="${orderController.order != null}">
			<h4>
				Suggerimento: <small>entrare nel dettaglio di un prodotto e
					inserirlo nel carrello.</small>
			</h4>
		</c:if>

		<h:form>

			<div class="row">

				<c:forEach var="product" items="#{productController.products}">
					<div class="col-xs-6 col-md-3">
						<div class="thumbnail">
							<img src="bootstrap/img.gif" alt="...">
							<div class="caption" style="margin-left: 100px;">
								<h:commandLink
									action="#{productController.findProduct(product.id)}"
									value="#{product.name}">
							</div>



							<div class="btn btn-primary" role="button"
								style="margin-left: 100px;">Dettagli prodotto</div>
							</h:commandLink>
							<c:if test="${loginController.administrator != null}">
								<h:commandButton styleClass="btn btn-primary" value="rimuovi"
									action="#{productController.deleteProduct(product.id)}" />

							</c:if>
						</div>

					</div>

				</c:forEach>
			</div>


			<c:choose>
				<c:when test="${loginController.administrator == null}">
					<ul class="pager">
						<li><h:commandLink action="faces/index.jsp"
								value="Torna alla home" /></li>

					</ul>
				</c:when>

				<c:when test="${loginController.administrator != null}">
					<ul class="pager">
						<li><h:commandLink action="faces/indexadmin.jsp"
								value="Torna alla home" /></li>

					</ul>
				</c:when>

			</c:choose>

		</h:form>
	</f:view>
</body>
</html>