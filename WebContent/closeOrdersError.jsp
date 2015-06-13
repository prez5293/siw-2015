<%@ page language="java" contentType="text/html; charset=US-ASCII"
	pageEncoding="US-ASCII"%>
<%@ taglib prefix="f" uri="http://java.sun.com/jsf/core"%>
<%@ taglib prefix="h" uri="http://java.sun.com/jsf/html"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=US-ASCII">
<title>LoginError</title>
</head>
<body>
	<f:view>
		<jsp:include page="header.jsp" />

		<h:form>
			<h3>Tutti gli ordini sono stati evasi</h3>
			<h:commandButton style="margin-left: 100px;" styleClass="btn btn-primary" action="faces/indexadmin.jsp"
						value="Torna alla home"/>
		</h:form>
	</f:view>
</body>
</html>