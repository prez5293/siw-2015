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
		<ul>
			<c:if test="${customerController.customer != null}">
				<li>${customerController.customer.firstName}
					${customerController.customer.lastName}</li>
			<li> <h:commandLink action="#{orderController.createOrder}" value="crea un ordine" >
		        <f:setPropertyActionListener value="#{customerController.customer}" target="#{orderController.customer}"/>
				</h:commandLink>		
			</li>
			</c:if>
			<li><a href='<c:url value="/faces/login.jsp" />'>login</a></li>
			<li><a href='<c:url value="/faces/signin.jsp" />'>sign in</a></li>
			<li>
					<h:commandLink action="#{productController.listProducts}"
						value="List all Products" />
				</h:form></li>
		</ul>
	</f:view>

</body>
</html>