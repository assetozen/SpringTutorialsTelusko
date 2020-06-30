<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>
	<%@ page import="java.util.*" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>fmt:bundle and fmt:setBundle Tag Example</title>
</head>
<body>
	<h3>JSTL fmt:bundle Tag Accessing Bundles directly from a java class</h3>
	<h2>The fmt:bundle tag will make the specified bundle available to all fmt:message tags that occur between the bounding fmt:bundle and /fmt:bundle tags. With this, you need not specify the resource bundle for each of your fmt:message tags.
	</h2><br>
	<h2>The fmt:setBundle tag is used to load a resource bundle and stores it in the named scoped variable or the bundle configuration variable.</h2>
	
	

	<h2>English</h2>		
      <fmt:bundle basename = "com.assegd.springbootjstlpractices.utils.BundleExample_En" prefix = "count.">
         <fmt:message key = "one"/><br/>
         <fmt:message key = "two"/><br/>
         <fmt:message key = "three"/><br/>
         <fmt:message key = "four"/><br/>
         <fmt:message key = "five"/><br/>
         <fmt:message key = "six"/><br/>
      </fmt:bundle>
      
      
      
      <h2>After using fmt:setBundle tag which sets a variable for the bundle</h2>
      <fmt:setBundle basename = "com.assegd.springbootjstlpractices.utils.BundleExample_En" var = "lang"/>
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