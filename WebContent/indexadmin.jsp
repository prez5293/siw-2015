<%@ page language="java" contentType="text/html; charset=US-ASCII"
	pageEncoding="US-ASCII"%>
<%@ taglib prefix="f" uri="http://java.sun.com/jsf/core"%>
<%@ taglib prefix="h" uri="http://java.sun.com/jsf/html"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=US-ASCII">
<title>SIW-2015</title>
</head>
<body>
	<f:view>
		<jsp:include page="header.jsp" />
		<h:form>
		<div class="bs-example" data-example-id="panel-without-body-with-table">
			<div class="panel panel-default">
				<h2>Benvenuto amministratore!</h2>
				<!-- Default panel contents -->
				<div class="list-group">
					<a href="#" class="list-group-item active"> Scegli la tua operazione </a> 
					<a href="<c:url value="/faces/newProduct.jsp" />" class="list-group-item">Inserisci prodotto</a> 
					<h:commandLink styleClass="list-group-item" action="#{productController.listProducts}" value="Lista di prodotti" />
					<h:commandLink styleClass="list-group-item" action="#{orderController.listOrders}"  value="Lista ordini" />
					<h:commandLink styleClass="list-group-item" action="#{orderController.closeOrders}"  value="Evadi ordine" />		
				</div>
			</div>
		</div>
		</h:form>
	</f:view>
</body>
</html>

