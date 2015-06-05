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

		<h:form>
			<h3>Customer's informations:</h3>
			<div>
				firstName:
				<h:inputText value="#{customerController.firstName}" required="true"
					requiredMessage="first name is mandatory" id="firstName" />
				<h:message for="firstName" />
			</div>
			<div>
				lastName:
				<h:inputText value="#{customerController.lastName}" required="true"
					requiredMessage="last name is mandatory" id="lastName" />
				<h:message for="lastName" />
			</div>
			<div>
				email:
				<h:inputText value="#{customerController.email}" required="true"
					requiredMessage="email is mandatory" id="email" />
				<h:message for="email" />
			</div>
			<div>
				password:
				<h:inputSecret value="#{customerController.password}"
					required="true" requiredMessage="password is mandatory"
					id="password" />
				<h:message for="password" />

			</div>
			<div>
				date of birth:
				<h:inputText value="#{customerController.dateOfBirth}"
					required="true" requiredMessage="date of birth is mandatory"
					id="dateOfBirth" converter="javax.faces.DateTime"
					converterMessage="Formato data errato. Esempio: 27-mag-2015" />

				<h:message for="dateOfBirth" />

			</div>

			<h3>Address:</h3>

			<div>
				street:
				<h:inputText value="#{customerController.cstreet}" required="true"
					requiredMessage="street is mandatory" id="cstreet" />
				<h:message for="cstreet" />

			</div>

			<div>
				state:
				<h:inputText value="#{customerController.cstate}" required="true"
					requiredMessage="stato is mandatory" id="cstate" />
				<h:message for="cstate" />
			</div>

			<div>
				zipcode:
				<h:inputText value="#{customerController.czipcode}" required="true"
					requiredMessage="zipcode is mandatory" id="czipcode" />
				<h:message for="czipcode" />

			</div>

			<div>
				country:
				<h:inputText value="#{customerController.ccountry}" required="true"
					requiredMessage="country is mandatory" id="ccountry" />
				<h:message for="ccountry" />

			</div>

			<div>
				<h:commandButton value="Submit"
					action="#{customerController.createCustomer}" />
			</div>

		</h:form>
	</f:view>
</body>
</html>