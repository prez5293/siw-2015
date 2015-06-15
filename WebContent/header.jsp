<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="f" uri="http://java.sun.com/jsf/core"%>
<%@ taglib prefix="h" uri="http://java.sun.com/jsf/html"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
<title>L'eclipse sei tu!</title>

<!-- Bootstrap -->
<link href="bootstrap/css/bootstrap.min.css" rel="stylesheet">
</head>
<h:form>

	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
	<script src="bootstrap/js/bootstrap.min.js"></script>
	<!---   da qui prova navbar  -->

	<div class="bs-docs-section">
		<h1 id="dropdowns" class="page-header">
			L'eclipse sei tu <small>Di Blasi,Galati</small>
		</h1>
		<h3>Benvenuto nel market</h3>
		<div class="bs-example">
			<nav id="navbar-example" class="navbar navbar-default navbar-static"
				role="navigation">
			<div class="container-fluid">
				<div class="navbar-header">
					<button class="navbar-toggle" type="button" data-toggle="collapse"
						data-target=".bs-example-js-navbar-collapse">
						<span class="sr-only">Toggle navigation</span> <span
							class="icon-bar"></span> <span class="icon-bar"></span> <span
							class="icon-bar"></span>
					</button>
					<c:choose>
						<c:when test="${customerController.customer != null}">
							<a class="navbar-brand" href="<c:url value="/faces/index.jsp" />">Home</a>
						</c:when>
						<c:when test="${loginController.administrator != null}">
							<a class="navbar-brand"
								href="<c:url value="/faces/indexadmin.jsp" />">Home</a>
						</c:when>
						<c:otherwise>
							<a class="navbar-brand" href="<c:url value="/faces/index.jsp" />">Home</a>
						</c:otherwise>
					</c:choose>
				</div>
				<div class="collapse navbar-collapse bs-example-js-navbar-collapse">

					<ul class="nav navbar-nav navbar-right">
						<c:choose>
							<c:when test="${loginController.administrator != null}">
								<li><a href='#'>Benvenuto Admin
										${loginController.administrator.firstName}
										${loginController.administrator.lastName}</a></li>
								<li><h:commandLink action="#{loginController.logout}"
										value="Logout" /></li>
							</c:when>
							<c:when test="${customerController.customer != null}">
								<li><a href='#'>Benvenuto
										${customerController.customer.firstName}
										${customerController.customer.lastName}</a></li>
								<li><h:commandLink action="#{customerController.logout}"
										value="Logout" /></li>
							</c:when>
							<c:otherwise>
								<li><a href='<c:url value="/faces/login.jsp" />'>login</a></li>
								<li><a href='<c:url value="/faces/signin.jsp" />'>signin</a></li>
								<li><a href='<c:url value="/faces/loginadmin.jsp" />'>Area
										Riservata</a></li>
							</c:otherwise>
						</c:choose>

					</ul>
				</div>
				<!-- /.nav-collapse -->
			</div>
			<!-- /.container-fluid --> </nav>
			<!-- /navbar-example -->
		</div>
		<!-- /example -->



		<!-- 			<ul class="pager">
				<li><a href="#">Previous</a></li>
				<li><a href="#">Next</a></li>
			</ul> -->
</h:form>
</html>



