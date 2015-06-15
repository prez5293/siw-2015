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

		<h:form styleClass="bs-example bs-example-form">
			<h2>Provider</h2>
			<br>
			<div class="input-group">
				 <span class="input-group-addon" id="sizing-addon2">Iva</span>
				<h:inputText styleClass="form-control" value="#{providerController.iva}" required="true"
					requiredMessage="L'iva e' obbligatoria" id="iva" />
				<h:message for="iva" />
			</div>
			<br>
			<div class="input-group">
				 <span class="input-group-addon" id="sizing-addon2">Numero di telefono</span>
				<h:inputText styleClass="form-control" value="#{providerController.phoneNumber}"
					required="true" requiredMessage="Il numero di telefono e' obbligatorio"
					id="phoneNumber" />
				<h:message for="phoneNumber" />
			</div>
			<br>
			<div class="input-group">
				 <span class="input-group-addon" id="sizing-addon2">Email</span>
				<h:inputText styleClass="form-control" value="#{providerController.email}" required="true"
					requiredMessage="L'email e' obbligatoria" id="email" />
				<h:message for="email" />
			</div>
			<br>
			<div class="input-group">
				 <span class="input-group-addon" id="sizing-addon2">Vatin</span>
				<h:inputText styleClass="form-control" value="#{providerController.vatin}" required="true"
					requiredMessage="Vatin obbligatorio" id="vatin" />
				<h:message for="vatin" />
			</div>
			<br>
			<h3>Address:</h3>
			<br>

			<div class="input-group">
				 <span class="input-group-addon" id="sizing-addon2">Indirizzo</span>
				<h:inputText styleClass="form-control" value="#{providerController.pstreet}" required="true"
					requiredMessage="La via e' obbligatoria" id="cstreet" />
				<h:message for="cstreet" />

			</div>
			<br>
			<div class="input-group">
				 <span class="input-group-addon" id="sizing-addon2">Citta'</span>
				<h:inputText styleClass="form-control" value="#{providerController.pstate}" required="true"
					requiredMessage="La citta' e' obbligatoria" id="cstate" />
				<h:message for="cstate" />
			</div>
			<br>
			<div class="input-group">
				 <span class="input-group-addon" id="sizing-addon2">Cap</span>
				<h:inputText styleClass="form-control" value="#{providerController.pzipcode}" required="true"
					requiredMessage="Il cap e' obbligatorio" id="czipcode" />
				<h:message for="czipcode" />

			</div>
			<br>

			<div class="input-group">
				 <span class="input-group-addon" id="sizing-addon2">Stato</span>
				<h:inputText styleClass="form-control" value="#{providerController.pcountry}" required="true"
					requiredMessage="Lo stato e' obbligatorio" id="ccountry" />
				<h:message for="ccountry" />

			</div>
			<br>




			<div>
				<h:commandButton style="margin-left:50%;" value="Submit"
					action="#{providerController.createProvider}" />
			</div>

		</h:form>
	</f:view>
</body>
</html>