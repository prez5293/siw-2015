<%@ taglib prefix="f" uri="http://java.sun.com/jsf/core"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="h" uri="http://java.sun.com/jsf/html"%>
<!DOCTYPE html>
<html>
<head>
<title>Product</title>
</head>
<body>
	<f:view>
	
		<jsp:include page="header.jsp" />
		<h1>Data creazione: <small>${orderController.order.creationTime}</small></h1>

		<h2>Dettagli</h2>
		
		
			<h:form>
			
				
				<div class="row">

					<c:forEach var="orderLine" items="#{orderController.order_lines}">
						<div class="col-xs-6 col-md-3">
							<div class="thumbnail">
								<div class="caption" style="margin-left: 100px;">
								${orderLine.product.name}, ${orderLine.quantity}, ${orderLine.unitPrice}
								</div>
 							</div>
                
						</div>

					</c:forEach>
				</div>
				
				<ul class="pager">
				<li><a href="<c:url value="/faces/orders.jsp" />">Torna indietro</a></li>
			</ul>
				
			</h:form>


	</f:view>
</body>
</html>