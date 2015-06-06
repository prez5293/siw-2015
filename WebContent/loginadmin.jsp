<%@ page language="java" contentType="text/html; charset=US-ASCII"
	pageEncoding="US-ASCII"%>
<%@ taglib prefix="f" uri="http://java.sun.com/jsf/core"%>
<%@ taglib prefix="h" uri="http://java.sun.com/jsf/html"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=US-ASCII">
<title>login</title>
</head>
<body>
	<f:view>
		<jsp:include page="header.jsp" />

		<h:form>
			<h3>login Admin:</h3>
			<div>
				email:
				<h:inputText value="#{loginController.email}" required="true"
					requiredMessage="email is mandatory" id="email" />
				<h:message for="email" />
			</div>
			<div>
				password:
				<h:inputSecret value="#{loginController.password}"
					required="true" requiredMessage="password is mandatory"
					id="password" />
				<h:message for="password" />

			</div>


			<div>
				<h:commandButton value="Submit"
					action="#{loginController.loginAdmin}" />
			</div>

		</h:form>
	</f:view>
</body>
</html>