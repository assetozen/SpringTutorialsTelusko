<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>
	<%@ page import="java.util.*" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix = "sql" uri = "http://java.sun.com/jsp/jstl/sql"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>sql:update Tag Example</title>
</head>
<body>
	<h3>JSTL sql:update Tag</h3><br>
	<h2>The sql:update tag executes an SQL statement that does not return data; for example, SQL INSERT, UPDATE, or DELETE statements.</h2><br>
	<p>Updates data displays it before and after the update from DB using the SQL query sent by jsp page</p>

	<br>
	<p>Before updating data</p>
	<sql:setDataSource var = "snapshot" driver = "com.mysql.cj.jdbc.Driver"
         url = "jdbc:mysql://localhost:3306/jstltest?useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC"
         user = "assegd"  password = "assegd"/>
      <sql:query dataSource = "${snapshot}" sql = "select * from student" var = "result" />
      <table border = "1" width = "100%">
         <tr><th>ID</th><th>Name</th><th>Language</th></tr>   
       <c:forEach var = "row" items = "${result.rows}">
         <tr><td><c:out value = "${row.id}"/></td><td><c:out value = "${row.name}"/></td><td><c:out value = "${row.lang}"/></td></tr>
       </c:forEach>
      </table>
      <br>
      
      <p>After updating data</p>
      <sql:update dataSource = "${snapshot}" sql = "INSERT INTO student VALUES(2,'Sara','JS')" var = "update" />
      <sql:query dataSource = "${snapshot}" sql = "select * from student" var = "result2" />
      <table border = "1" width = "100%">
         <tr><th>ID</th><th>Name</th><th>Language</th></tr>   
       <c:forEach var = "row" items = "${result2.rows}">
         <tr><td><c:out value = "${row.id}"/></td><td><c:out value = "${row.name}"/></td><td><c:out value = "${row.lang}"/></td></tr>
       </c:forEach>
      </table>
	<br>
	<br>
	<form action="/">
		<input type="submit" value="Back to home">
	</form>

</body>
</html>