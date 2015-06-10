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

		<h1>${orderController.order.creationTime}</h1>

		<h2>Dettagli</h2>
		


	</f:view>
</body>
</html>