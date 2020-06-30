<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>JSTL Tags Best Practices</title>


<style>
table, th, td {
  border: 1px solid black;
  padding: 5px;
}
table {
  border-spacing: 15px;
  align-self: center;
}
</style>
</head>
<body>
  <h2 align="Center" style="color:red">Welcome to Jstl Best Practices</h2>
  <br><br><br>
  <table id="table" >
   <tr>
    <th>Core Tags</th><th>Formatting Tags</th><th>SQL Tags</th><th>XML Tags</th><th>JSTL Functions</th>
  </tr>
  <tr>
  		<td><form action="setTag"><input type="submit" value="c:set Tag"></form><br>
  			<form action="removeTag"><input type="submit" value="c:remove Tag"></form><br>
  			<form action="catchTag"><input type="submit" value="c:catch Tag"></form><br>
  			<form action="ifTag"><input type="submit" value="c:if Tag"></form><br>
  			<form action="chooseTag"><input type="submit" value="c:choose Tag"></form><br>
  			<form action="importTag"><input type="submit" value="c:import Tag"></form><br>
  			<form action="forEachForTokensTag"><input type="submit" value="c:forEach and c:forTokens Tags"></form><br>
  			<form action="paramTag"><input type="submit" value="c:param Tag"></form><br>
  			<form action="redirectTag"><input type="submit" value="c:redirect Tag"></form><br>
   			<form action="urlTag"><input type="submit" value="c:url Tag"></form><br>
   		</td>
   		<td>
   			<form action="formatNumberTag"><input type="submit" value="fmt:formatNumber Tag"></form><br>
   			<form action="parseNumberTag"><input type="submit" value="fmt:parseNumber Tag"></form><br>
   			<form action="formatDateTag"><input type="submit" value="fmt:formatDate Tag"></form><br>
   			<form action="parseDateTag"><input type="submit" value="fmt:parseDate Tag"></form><br>
   			<form action="bundleTag"><input type="submit" value="fmt:bundle and fmt:setBundle Tag"></form><br>
   			<form action="bundleTagForManyLocale"><input type="submit" value="fmt:bundle Tag For Many Locale"></form><br>
   			<form action="timeZoneTag"><input type="submit" value="fmt:timeZone Tag"></form><br>
   			<form action="messageTag"><input type="submit" value="fmt:message Tag"></form><br>
   			<form action="requestEncodingTag"><input type="submit" value="fmt:requestEncoding Tag"></form><br>
   		</td>
   		<td>
   			<form action="setDataSourceTag"><input type="submit" value="sql:setDataSource Tag"></form><br>
   			<form action="sqlUpdateTag"><input type="submit" value="sql:update Tag"></form><br>
   			<form action="sqlParamTag"><input type="submit" value="sql:param Tag"></form><br>
   			<form action="sqlTransactionTag"><input type="submit" value="sql:transaction Tag"></form><br>
   		</td>
   		<td>
   			<a href="https://www.tutorialspoint.com/jsp/jsp_standard_tag_library.htm">To read XMl JSTL tags click here</a>
   		</td>
   		<td>
   			<form action="containsAndContainsIgnoreCaseTag"><input type="submit" value="fn:contains() and fn:containsIgnoreCase() Tag"></form><br>
   			<form action="startsWithAndendsWithTag"><input type="submit" value="fn:startsWith and fn:endsWith() Tag"></form><br>
   			<form action="escapeXmlTag"><input type="submit" value="fn:escapeXml() Tag"></form><br>
   			<form action="indexOfAndJoinTag"><input type="submit" value="fn:indexOf() and fn:join() Tag"></form><br>
   			<form action="lengthAndReplaceTag"><input type="submit" value="fn:length() and fn:replace() Tag"></form><br>
   			<form action="substringAndSubstringAfterAndSubstringBeforeTag"><input type="submit" value="fn:substring() and fn:substringBefore() and fn:substringAfter() Tag"></form><br>
   			<form action="toLowerCaseAndToUpperCaseAndTrimTag"><input type="submit" value="fn:toLowerCase() and fn:toUpperCase() and fn:trim() Tag"></form><br>
   			
   			
   			
   		</td>
  </tr>
  </table> 
    <br>
    <br>
    <br>
   Welcome Alien with id=${alein.aid} , name=${alien.aname} and language=${alien.lang} 
   
   <br>
   
</body>
</html>