<%@ page language="java" contentType="text/html; charset=US-ASCII"
	pageEncoding="US-ASCII"%>
<%@ taglib prefix="f" uri="http://java.sun.com/jsf/core"%>
<%@ taglib prefix="h" uri="http://java.sun.com/jsf/html"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=US-ASCII">
<title>New Provider</title>
</head>
<body>
	<f:view>
		<jsp:include page="header.jsp" />

		<h:form>
			<h2>Provider</h2>
			<div>
				Iva:
				<h:inputText value="#{providerController.iva}" required="true"
					requiredMessage="Iva is mandatory" id="iva" />
				<h:message for="iva" />
			</div>
			<div>
				Phone Number:
				<h:inputText value="#{providerController.phoneNumber}"
					required="true" requiredMessage="Phone number is mandatory"
					id="phoneNumber" />
				<h:message for="phoneNumber" />
			</div>
			<div>
				Email:
				<h:inputText value="#{providerController.email}" required="true"
					requiredMessage="Email is mandatory" id="email" />
				<h:message for="email" />
			</div>
			<div>
				Vatin:
				<h:inputText value="#{providerController.vatin}" required="true"
					requiredMessage="Vatin is mandatory" id="vatin" />
				<h:message for="vatin" />
			</div>

			<h3>Address:</h3>

			<div>
				street:
				<h:inputText value="#{providerController.pstreet}" required="true"
					requiredMessage="street is mandatory" id="cstreet" />
				<h:message for="cstreet" />

			</div>

			<div>
				state:
				<h:inputText value="#{providerController.pstate}" required="true"
					requiredMessage="stato is mandatory" id="cstate" />
				<h:message for="cstate" />
			</div>

			<div>
				zipcode:
				<h:inputText value="#{providerController.pzipcode}" required="true"
					requiredMessage="zipcode is mandatory" id="czipcode" />
				<h:message for="czipcode" />

			</div>

			<div>
				country:
				<h:inputText value="#{providerController.pcountry}" required="true"
					requiredMessage="country is mandatory" id="ccountry" />
				<h:message for="ccountry" />

			</div>




			<div>
				<h:commandButton value="Submit"
					action="#{providerController.createProvider}" />
			</div>

		</h:form>
	</f:view>
</body>
</html>