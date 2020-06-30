<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title> c:remove Tag Example</title>
</head>
<body>
 <c:set var = "salary" scope = "session" value = "${2000*2}"/>
      <p>Before Remove Value: <c:out value = "${salary}"/></p>
 <c:remove var = "salary"/>
      <p>After Remove Value: <c:out value = "${salary}"/></p>

<br><br>      
<form action="/"><input type="submit"  value="Back to home" ></form>      
      
</body>
</html>