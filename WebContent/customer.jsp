<%@ taglib prefix="f"  uri="http://java.sun.com/jsf/core"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="h" uri="http://java.sun.com/jsf/html"%>
<!DOCTYPE html>
<html>
<head>
<title>siw-2015</title>
</head>
<body>
<f:view>
<h1>Successfully Registered</h1>
<h2>Summary:<h2>
<div>first name: ${customerController.customer.firstName}</div>
<div>last name: ${customerController.customer.lastName}</div>
<div>email: ${customerController.customer.email}</div>
<div>password: ${customerController.customer.password}</div>
<div>date of birth: ${customerController.customer.dateOfBirth}</div>
<div>registration date: ${customerController.customer.registrationDate}</div>


<a href='<c:url value="/faces/index.jsp" />'>back to home</a>

</f:view>
</body>
</html>