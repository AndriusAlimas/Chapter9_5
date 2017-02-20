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
	<%-- <c:set> tag comes in two flavours one is var another is target, if you using var it means you 
	setting a attributes scope is optional, but default scope as always page scope. Second flavour
	is target, is for setting bean properties like standart actions jsp:setProperty or Map values --%>
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
	
	<%-- we create a bean object in page scope --%>
	<jsp:useBean id="person" class="com.example.bean.Person" />
	<%-- now using second flavour target with set --%>
	<%-- target must be not null!!, target goes attribute not name!!! --%>
	<c:set target="${person}"  property="name">
	 Andrius
	</c:set>
	
	<h1>${person.name}</h1>
	
	<%-- now showing with Map, if target is Map --%>
	<jsp:useBean id="yourNewMap" class="java.util.HashMap" scope="request"/><%-- its not bean its HashMap!!! --%>
<c:set target="${yourNewMap}" property="surname" 
value="Alimas"/>    
	
	<hr><h1>${yourNewMap["surname"]}</h1>
	<%-- last example of using c:remove, yes you can remove attribute with c:set only if value is null 
	lets try then to remove: --%>
	<c:remove var="user" /><%-- If we dont specify a scope it will remove this var from all scopes!!! --%>
	<hr><h3>Example using remove core tag and if not printing that is removed attribute is working: ${user} 
	
	</h3>
</body>
</html>