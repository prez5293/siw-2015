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
<h2>Summary:</h2>
<div><b>first name:</b> ${customerController.customer.firstName}</div>
<div><b>last name:</b> ${customerController.customer.lastName}</div>
<div><b>email:</b> ${customerController.customer.email}</div>
<div><b>password</b>: ${customerController.customer.password}</div>
<div><b>date of birth:</b> ${customerController.customer.dateOfBirth}</div>
<div><b>registration date:</b> ${customerController.customer.registrationDate}</div>
<div><b>street:</b> ${customerController.address.street}</div>
<div><b>state:</b> ${customerController.address.state}</div>
<div><b>zipcode:</b> ${customerController.address.zipcode}</div>
<div><b>country:</b> ${customerController.address.country}</div>



<a href='<c:url value="/faces/index.jsp" />'>back to home</a>

</f:view>
</body>
</html>