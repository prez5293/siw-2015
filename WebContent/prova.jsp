<%@ taglib prefix="f" uri="http://java.sun.com/jsf/core"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="h" uri="http://java.sun.com/jsf/html"%>
<!DOCTYPE html>
<html>
<head>
<title>provacoi</title>
</head>
<body>
	<f:view>

		<a href='<c:url value="/faces/index.jsp" />'>back to home</a>
		<h:form>
			<h:commandLink action="#{productController.listProducts1}"
				value="Back to list" />
		</h:form>
	</f:view>
</body>
</html>