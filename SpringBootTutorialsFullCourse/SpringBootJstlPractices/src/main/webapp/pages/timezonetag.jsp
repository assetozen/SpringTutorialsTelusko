<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>
	<%@ page import="java.util.*" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>fmt:timeZone Tag Example</title>
</head>
<body>
	<h3>JSTL fmt:timeZone Tag</h3>
	<h2>The fmt:timeZone tag is used to specify the time zone that all tags within its body will use.</h2>
	  <c:set var = "now" value = "<%= new java.util.Date()%>" />
      
      <table border = "1" width = "100%">
         <tr>
            <td width = "100%" colspan = "2" bgcolor = "#0000FF">
               <p align = "center">
                  <b>
                     <font color = "#FFFFFF" size = "4">Formatting:
                        <fmt:formatDate value = "${now}" type = "both"
                        timeStyle = "long" dateStyle = "long" />
                     </font>
                  </b>
               </p>
            </td>
         </tr>

         <c:forEach var = "zone"
            items = "<%= java.util.TimeZone.getAvailableIDs()%>">
            <tr>
               <td width = "51%">
                  <c:out value = "${zone}" />
               </td>
               <td width = "49%">
                  <fmt:timeZone value = "${zone}">
                  <fmt:formatDate value = "${now}" timeZone = "${zn}"
                     type = "both" />
                  </fmt:timeZone>
               </td>
            </tr>
         </c:forEach>
      </table>
	<br>
	<br>
	<form action="/">
		<input type="submit" value="Back to home">
	</form>

</body>
</html>