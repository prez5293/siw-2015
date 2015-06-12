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

		<h1>${productController.product.name}</h1>

		<h2>Details</h2>
		<div>Code: ${productController.product.code}</div>
		<div>Price: ${productController.product.price}</div>
		<div>Description: ${productController.product.description}</div>

		<h:form>
			<c:if test="${orderController.order != null}">
				<div>
					quantità:
					<h:inputText value="#{orderController.quantity}" required="false"
						requiredMessage="inserire quantità" id="quantity"
						converterMessage="La quantità deve essere un numero" id="quantity" />
					<h:message for="quantity" />
				</div>



				<h:commandButton value="ordina"
					action="#{orderController.addOrderLine}">
					<f:setPropertyActionListener value="#{productController.product}"
						target="#{orderController.product}" />
				</h:commandButton>

			</c:if>

			<c:choose>
				<c:when test="${loginController.administrator == null}">
					<ul class="pager">
						<li><h:commandLink action="faces/index.jsp"
								value="Torna alla home" /></li>

						<li><h:commandLink action="#{productController.listProducts}"
								value="Torna alla lista" /></li>
					</ul>
				</c:when>

				<c:when test="${loginController.administrator != null}">
					<ul class="pager">
						<li><h:commandLink action="faces/indexadmin.jsp"
								value="Torna alla home" /></li>

						<li><h:commandLink action="#{productController.listProducts}"
								value="Torna alla lista" /></li>
					</ul>
				</c:when>

			</c:choose>



		</h:form>
	</f:view>
</body>
</html>