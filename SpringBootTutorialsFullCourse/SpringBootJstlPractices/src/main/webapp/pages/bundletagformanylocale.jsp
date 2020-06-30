<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>
	<%@ page import="java.util.*" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>fmt:bundle Tag Example</title>
</head>
<body>
	<h3>JSTL fmt:bundle Tag Accessing Bundles directly from a java class</h3>
	<h2>English</h2>		
      <fmt:bundle basename = "com.assegd.springbootjstlpractices.utils.BundleExample_En" prefix = "count.">
         <fmt:message key = "one"/><br/>
         <fmt:message key = "two"/><br/>
         <fmt:message key = "three"/><br/>
         <fmt:message key = "four"/><br/>
         <fmt:message key = "five"/><br/>
         <fmt:message key = "six"/><br/>
      </fmt:bundle>
	<br>
	
	<h3>JSTL fmt:bundle Tag Accessing Bundles directly from application.properties and assigning bundle to variable using fmt:setBundle</h3>
	<h2>The fmt:setLocale tag is used to store the given locale in the locale configuration variable.</h2>	

	<h2>English</h2>
	<fmt:setLocale value = "en"/>
      <fmt:setBundle basename = "application" var = "lang"/>

      <fmt:message key = "count.one" bundle = "${lang}"/><br/>
      <fmt:message key = "count.two" bundle = "${lang}"/><br/>
      <fmt:message key = "count.three" bundle = "${lang}"/><br/>



	<h3>JSTL fmt:bundle Tag for many locale (different languages) from application.properties file</h3>
	<h2>English</h2>		
   <fmt:bundle basename = "application">
         <fmt:message key = "count.one"/><br/>
         <fmt:message key = "count.two"/><br/>
         <fmt:message key = "count.three"/><br/>
         <fmt:message key = "count.four"/><br/>
         <fmt:message key = "count.five"/><br/>
         <fmt:message key = "count.six"/><br/>
      </fmt:bundle>
      
      
      
      
      <h2>Spanish</h2>
      <!-- change locale to spanish -->
      <fmt:setLocale value="es"/>
      <fmt:bundle basename = "application">
         <fmt:message key = "count.one"/><br/>
         <fmt:message key = "count.two"/><br/>
         <fmt:message key = "count.three"/><br/>
         <fmt:message key = "count.four"/><br/>
         <fmt:message key = "count.five"/><br/>
         <fmt:message key = "count.six"/><br/>
      </fmt:bundle>
	<br>
	<br>
	<form action="/">
		<input type="submit" value="Back to home">
	</form>

</body>
</html>