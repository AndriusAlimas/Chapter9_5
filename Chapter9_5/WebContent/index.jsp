<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Welcome page</title>
</head>
<body>
	<%-- Setting an attribute variable var, you can set attribute in any scope
	or you can set a value in a Map, you also can make new entry in a Map --%>
	<%-- for this example you set userLevel in session scope and value you set 16
	yes it can be also El expression --%>
	<c:set var="userLevel" scope="session" value="${16}"></c:set>
	<h3>userLevel in Session scope: ${sessionScope.userLevel}</h3><br>
	
	<c:set var="Fido" scope="request" value="${person.dog}" />
	<h3>Fido in request scope: ${requestScope.Fido}</h3><br> <%-- if ${person.dog} evaluates to a Dog object, then 
	Fido will become of type Dog, But if value evaluates to null, the variable will be REMOVED!! --%>
	
	<%-- example with body <c:set>  --%>
	<hr>
	<c:set var='user' scope='application' >
		Sheriff, Bartender, Cowgirl
	</c:set>
	
	<h3>user in application scope: ${applicationScope.user}</h3><br>
</body>
</html>