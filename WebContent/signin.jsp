<%@ page language="java" contentType="text/html; charset=US-ASCII"
	pageEncoding="US-ASCII"%>
<%@ taglib prefix="f" uri="http://java.sun.com/jsf/core"%>
<%@ taglib prefix="h" uri="http://java.sun.com/jsf/html"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=US-ASCII">
<title>signIn</title>
</head>
<body>
	<f:view>
		<jsp:include page="header.jsp" />

		<h:form styleClass="bs-example bs-example-form">
			<h3>Informazione del cliente:</h3>
			<br>
			<div class="input-group">
				<span class="input-group-addon" id="sizing-addon2">nome</span>
				<h:inputText styleClass="form-control" value="#{customerController.firstName}" required="true"
					requiredMessage="first name is mandatory" id="firstName" />
				<h:message for="firstName" />
			</div>
			<br>
			<div class="input-group">
				<span class="input-group-addon" id="sizing-addon2">cognome</span>
				<h:inputText styleClass="form-control" value="#{customerController.lastName}" required="true"
					requiredMessage="last name is mandatory" id="lastName" />
				<h:message for="lastName" />
			</div>
			<br>
			<div class="input-group">
				<span class="input-group-addon" id="sizing-addon2">email</span>
				<h:inputText styleClass="form-control" value="#{customerController.email}" required="true"
					requiredMessage="email is mandatory" id="email" />
				<h:message for="email" />
			</div>
			<br>
			<div class="input-group">
				<span class="input-group-addon" id="sizing-addon2">password</span>
				<h:inputSecret styleClass="form-control" value="#{customerController.password}"
					required="true" requiredMessage="password is mandatory"
					id="password" />
				<h:message for="password" />
			</div>
			<br>
			<div class="input-group">
				<span class="input-group-addon" id="sizing-addon2">Data di nascita</span>
				<h:inputText styleClass="form-control" value="#{customerController.dateOfBirth}"
					required="true" requiredMessage="date of birth is mandatory"
					id="dateOfBirth" converter="javax.faces.DateTime"
					converterMessage="Formato data errato. Esempio: 27-mag-2015" />
				<h:message for="dateOfBirth" />
			</div>
		<br>
			<h3>Address:</h3>
			<br>
			<div class="input-group">
				<span class="input-group-addon" id="sizing-addon2">Indirizzo</span>
				<h:inputText styleClass="form-control" value="#{customerController.cstreet}" required="true"
					requiredMessage="street is mandatory" id="cstreet" />
				<h:message for="cstreet" />

			</div>
			<br>
			<div class="input-group">
				<span class="input-group-addon" id="sizing-addon2">Citta</span>
				<h:inputText styleClass="form-control" value="#{customerController.cstate}" required="true"
					requiredMessage="stato is mandatory" id="cstate" />
				<h:message for="cstate" />
			</div>
			<br>
			<div class="input-group">
				<span class="input-group-addon" id="sizing-addon2">cap</span>
				<h:inputText styleClass="form-control" value="#{customerController.czipcode}" required="true"
					requiredMessage="zipcode is mandatory" id="czipcode" />
				<h:message for="czipcode" />

			</div>
			<br>
			<div class="input-group">
				<span class="input-group-addon" id="sizing-addon2">Stato</span>
				<h:inputText styleClass="form-control" value="#{customerController.ccountry}" required="true"
					requiredMessage="country is mandatory" id="ccountry" />
				<h:message for="ccountry" />
			</div>
			<br>
			<div>
				<h:commandButton style="margin-left:50%;" value="Submit" action="#{customerController.createCustomer}" />
			</div>
			<br>

		</h:form>
	</f:view>
</body>
</html>