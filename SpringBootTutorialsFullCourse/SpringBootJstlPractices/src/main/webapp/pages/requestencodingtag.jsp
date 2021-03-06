<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>
	<%@ page import="java.util.*" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>fmt:requestEncoding Tag Example</title>
</head>
<body>
 <fmt:requestEncoding value = "UTF-8" />
	<h3>JSTL fmt:requestEncoding Tag</h3><br>
	<h2>The fmt:requestEncoding tag is used to specify the encoding type used by forms that post data back to the Web application.</h2><br>
	<h3>JSTL fmt:message Tag </h3>
	
	<h3>JSTL fmt:bundle Tag Accessing Bundles directly from application.properties and assigning bundle to variable using fmt:setBundle</h3>
	<h2>English</h2>
	<fmt:setLocale value = "en"/>
      <fmt:setBundle basename = "application" var = "lang"/>

      <fmt:message key = "count.one" bundle = "${lang}"/><br/>
      <fmt:message key = "count.two" bundle = "${lang}"/><br/>
      <fmt:message key = "count.three" bundle = "${lang}"/><br/>
      
   	<h2>Spanish</h2>
	<fmt:setLocale value = "es"/>
      <fmt:setBundle basename = "application" var = "lang"/>

      <fmt:message key = "count.one" bundle = "${lang}"/><br/>
      <fmt:message key = "count.two" bundle = "${lang}"/><br/>
      <fmt:message key = "count.three" bundle = "${lang}"/><br/>
	
	<br>
	<br>
	<form action="/">
		<input type="submit" value="Back to home">
	</form>

</body>
</html>