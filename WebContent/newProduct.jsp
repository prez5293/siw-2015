<%@ page language="java" contentType="text/html; charset=US-ASCII"
	pageEncoding="US-ASCII"%>
<%@ taglib prefix="f" uri="http://java.sun.com/jsf/core"%>
<%@ taglib prefix="h" uri="http://java.sun.com/jsf/html"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=US-ASCII">
<title>New Product</title>
</head>
<body>
	<f:view>
		<jsp:include page="header.jsp" />

		<h:form styleClass="bs-example bs-example-form">
			<h2>Informazioni del prodotto</h2>
			<br>
			<div class="input-group">
			    <span class="input-group-addon" id="sizing-addon2">nome</span>
				<h:inputText styleClass="form-control" value="#{productController.name}" required="true"
					requiredMessage="Il nome e' obbligatorio" id="name" />
				<h:message for="name" />
			</div>
			<br>			
			<div class="input-group">
			    <span class="input-group-addon" id="sizing-addon2">codice</span>
				<h:inputText styleClass="form-control" value="#{productController.code}" required="true"
					requiredMessage="Il codice e' obbligatorio" id="code" />
				<h:message for="code" />
			</div>
			<br>
			<div class="input-group">
			    <span class="input-group-addon" id="sizing-addon2">prezzo</span>
				<h:inputText styleClass="form-control" value="#{productController.price}" required="true"
					requiredMessage="Il prezzo e' obbligatorio"
					converterMessage="Il prezzo deve essere un numero" id="price" />
				<h:message for="price" />
			</div>
			<br>
			<div class="input-group">
			    <span class="input-group-addon" id="sizing-addon2">descrizione</span>
				<h:inputTextarea styleClass="form-control" value="#{productController.description}"
					required="false" cols="20" rows="5" />

			</div>
			<br>
			<div class="input-group">
			    <span class="input-group-addon" id="sizing-addon2">email fornitore</span>
				<h:inputText styleClass="form-control" value="#{productController.pemail}" required="true"
					requiredMessage="L'email e' obbligatoria" id="pemail" />
				<h:message for="pemail" />
			</div>
			<br>



			<div>
				<h:commandButton style="margin-left:47%;" value="Submit"
					action="#{productController.createProduct}" />
			</div>
			</h:form>
			<h:form>
				<ul class="pager">
					<li><h:commandLink action="faces/indexadmin.jsp"
							value="Torna alla home" /></li>
				</ul>
			</h:form>
	</f:view>
</body>
</html>