<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>
	<%@ page import="java.util.*" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix = "sql" uri = "http://java.sun.com/jsp/jstl/sql"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>sql:param Tag Example</title>
</head>
<body>
	<h3>JSTL sql:param Tag</h3><br>
	<h2>The sql:param tag used as a nested action for the sql:query tag and the sql:update tag to supply a value for a value placeholder. If a null value is provided, the value is set to SQL NULL for the placeholder.</h2><br>
	<p>Updates data(deletes student) displays it before and after the update from DB using the SQL query sent by jsp page</p>

	<br>
	<p>Before updating data</p>
	<sql:setDataSource var = "snapshot" driver = "com.mysql.cj.jdbc.Driver"
         url = "jdbc:mysql://localhost:3306/jstltest?useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC"
         user = "assegd"  password = "assegd"/>
       <sql:update dataSource = "${snapshot}" sql = "INSERT INTO student VALUES(2,'Sara','JS')" var = "update" />
      <sql:query dataSource = "${snapshot}" sql = "select * from student" var = "result" />
      <table border = "1" width = "100%">
         <tr><th>ID</th><th>Name</th><th>Language</th></tr>   
       <c:forEach var = "row" items = "${result.rows}">
         <tr><td><c:out value = "${row.id}"/></td><td><c:out value = "${row.name}"/></td><td><c:out value = "${row.lang}"/></td></tr>
       </c:forEach>
      </table>
      <br>
      
      
      <p>After updating data by passing the id of stud to be deleted in a sql:param tag</p>
      <c:set var = "studId" value = "2"/>
      <sql:update dataSource = "${snapshot}" sql = "DELETE FROM student WHERE id=?" var = "update">
      		<sql:param value="${studId}"/>
      </sql:update>
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