<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>
	<%@ page import="java.util.*" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix = "sql" uri = "http://java.sun.com/jsp/jstl/sql"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>sql:setDataSource Tag Example</title>
</head>
<body>
	<h3>JSTL sql:setDataSource Tag</h3><br>
	<h2>The sql:setDataSource tag sets the data source configuration variable or saves the data-source information in a scoped variable that can be used as input to the other JSTL database actions.</h2><br>
	<h2>The sql:query tag executes an SQL SELECT statement and saves the result in a scoped variable.</h2><br>
	<p>Reads data from DB using the SQL query sent by jsp page</p>

	<sql:setDataSource var = "snapshot" driver = "com.mysql.cj.jdbc.Driver"
         url = "jdbc:mysql://localhost:3306/jstltest?useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC"
         user = "assegd"  password = "assegd"/>
      <sql:query dataSource = "${snapshot}" sql = "select * from student" var = "result" />
      <table border = "1" width = "100%">
         <tr>
            <th>ID</th>
            <th>Name</th>
            <th>Language</th>
         </tr>   
       <c:forEach var = "row" items = "${result.rows}">
         <tr>
            <td><c:out value = "${row.id}"/></td>
            <td><c:out value = "${row.name}"/></td>
            <td><c:out value = "${row.lang}"/></td>
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