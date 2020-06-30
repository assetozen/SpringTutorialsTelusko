<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title> c:redirect Tag Example</title>
</head>
<body>
 <c:set var="myurl" value="2" scope="request"/>
  <c:if test="${myurl<1}">
     <c:redirect url="http://beginnersbook.com"/>
  </c:if>
  <c:if test="${myurl>1}">
     <c:redirect url="http://www.google.com"/>
  </c:if>
<br><br>      
<form action="/"><input type="submit"  value="Back to home" ></form>      
      
</body>
</html>