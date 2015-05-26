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
		<h:form>
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
				<h:inputText value="#{customerController.password}" required="true" 
				requiredMessage="password is mandatory"	id="password" />
				<h:message for="password" />

			</div>
			<div>
				date of birth:
				<h:inputText value="#{customerController.dateOfBirth}"
					required="true" requiredMessage="date of birth is mandatory"
                    id="dateOfBirth"
				    converter="javax.faces.DateTime"/>
				<h:message for="dateOfBirth" />

			</div>


			<!-- <div>address: <h:inputText value="#{customerController.address}" 
    				 required="true"
                     requiredMessage="address is mandatory"
                     id="address"/> <h:message for="address" />
                     
	        </div> -->
			<div>
				<h:commandButton value="Submit" action="#{customerController.createCustomer}" />
			</div>

		</h:form>
	</f:view>
</body>
</html>