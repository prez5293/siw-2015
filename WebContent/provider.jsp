<%@ taglib prefix="f" uri="http://java.sun.com/jsf/core"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="h" uri="http://java.sun.com/jsf/html"%>
<!DOCTYPE html>
<html>
<head>
<title>siw-2015</title>
</head>
<body>
	<f:view>
		<h1>provider's informations</h1>

		<div>
			<b>iva:</b> ${providerController.provider.iva}
		</div>
		<div>
			<b>phone number:</b> ${providerController.provider.phoneNumber}
		</div>
		<div>
			<b>email:</b> ${providerController.provider.email}
		</div>
		<div>
			<b>vatin</b>: ${providerController.provider.vatin}
		</div>

		<h1> Provider's address </h1>
		<div>
			<b>street:</b> ${providerController.address.street}
		</div>
		<div>
			<b>state:</b> ${providerController.address.state}
		</div>
		<div>
			<b>zipcode:</b> ${providerController.address.zipcode}
		</div>
		<div>
			<b>country:</b> ${providerController.address.country}
		</div>



		<a href='<c:url value="/faces/index.jsp" />'>back to home</a>

	</f:view>
</body>
</html>