<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title> c:catch Tag Example</title>
</head>
<body>
 <c:catch var="catchException"> <% int x = 5/0; %></c:catch>
 
 <c:if test="${catchException != null}">
 	<p>	The Exception is : ${catchException}<br />
 		There is an exception : ${catchException.message}
 	</p>
 </c:if>

<br><br>      
<form action="/"><input type="submit"  value="Back to home" ></form>      
      
</body>
</html>