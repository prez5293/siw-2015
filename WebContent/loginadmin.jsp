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
		<h:form styleClass="bs-example bs-example-form">
			<h3>login Admin:</h3>
			<br>
			  <div class="input-group">
				 <span class="input-group-addon" id="sizing-addon2">email</span>
				<h:inputText styleClass="form-control" value="#{loginController.email}" required="true"
					requiredMessage="L'email e' obbligatoria" id="email" />
				<h:message for="email" />
			</div>
			<br>
			<div class="input-group">
				 <span class="input-group-addon" id="sizing-addon2">password</span>
				<h:inputSecret styleClass="form-control" value="#{loginController.password}"
					required="true" requiredMessage="La password e' obbligatoria"
					id="password" />
				<h:message for="password" />
			</div>
			<br>

			<div>
				<h:commandButton style="margin-left:50%;" value="Submit"	action="#{loginController.loginAdmin}" />
			</div>

		</h:form>
	</f:view>
</body>
</html>