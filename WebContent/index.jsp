<%@page import="it.uniroma3.model.ProductFacade"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="f" uri="http://java.sun.com/jsf/core"%>
<%@ taglib prefix="h" uri="http://java.sun.com/jsf/html"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>siw-2015</title>
</head>
<body>
	<f:view>
		<jsp:include page="header.jsp" />
		<h:form>
		<div class="bs-example" data-example-id="panel-without-body-with-table">
			<div class="panel panel-default">
				<c:choose>
					<c:when test="${customerController.customer != null}">
						<h2>Benvenuto <small>${customerController.customer.firstName} ${customerController.customer.lastName}</small></h2>
					</c:when>
					<c:otherwise>
						<h2>Benvenuto <small>utente</small></h2>		
					 </c:otherwise>
				 </c:choose>
				<!-- Default panel contents -->
				<div class="list-group">
					<a href="#" class="list-group-item active"> Scegli la tua operazione </a>
					<c:if test="${customerController.customer != null}"> 
					<h:commandLink styleClass="list-group-item" action="#{orderController.createOrder}" value="crea un ordine" actionListener="#{productController.listProducts1}" >
				    <f:setPropertyActionListener value="#{customerController.customer}" target="#{orderController.customer}"/>  
					</h:commandLink>
					<h:commandLink styleClass="list-group-item" action="#{customerController.listOrders}" value="elenco ordini completati" />
					</c:if>
					<h:commandLink styleClass="list-group-item" action="#{productController.listProducts}"  value="Lista di prodotti" />
				</div>


			</div>
		</div>
	</h:form>	
	</f:view>

</body>
</html>