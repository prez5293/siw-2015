<%@ taglib prefix="f" uri="http://java.sun.com/jsf/core"%>
<%@ taglib prefix="h" uri="http://java.sun.com/jsf/html"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=US-ASCII">
<title>Products</title>
</head>
<body>
	<f:view>
		<jsp:include page="header.jsp" />

		<h1>Products</h1>
			<h:form>
				<h:commandLink action="#{orderController.closeOrder}" value="Termina ordine" />				
				<div class="row">

					<c:forEach var="product" items="#{productController.products}">
						<div class="col-xs-6 col-md-3">
							<div class="thumbnail">
								<img src="bootstrap/img.gif" alt="...">
								<div class="caption" style="margin-left: 100px;">
								<h:commandLink action="#{productController.findProduct(product.id)}" value="#{product.name}">
										
								</div>
								<div class="btn btn-primary" role="button"
									style="margin-left: 100px;">Details</div>
								</h:commandLink>
							</div>

						</div>

					</c:forEach>
				</div>
			</h:form>
			
 			<ul class="pager">
				<li><a href="<c:url value="/faces/index.jsp" />">Back to home</a></li>
			</ul>

	</f:view>
</body>
</html>