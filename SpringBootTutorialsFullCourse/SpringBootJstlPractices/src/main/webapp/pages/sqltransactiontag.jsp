<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>
	<%@ page import="java.util.*" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix = "sql" uri = "http://java.sun.com/jsp/jstl/sql"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>sql:transaction Tag Example</title>
</head>
<body>
	<h3>JSTL sql:transaction Tag</h3>
	<h2>The sql:transaction tag is used to group the sql:query and sql:update tags into transactions. You can put as many sql:query and sql:update tags as statements inside the sql:transaction tag to create a single transaction.
		It ensures that the database modifications performed by the nested actions are either committed or rolled back if an exception is thrown by any nested action.</h2>
	<br>
	<p>Updates data displays it before and after the update from DB using the SQL query sent by jsp page</p>

	<br>
	<p>Before updating data</p>
	<sql:setDataSource var = "snapshot" driver = "com.mysql.cj.jdbc.Driver"
         url = "jdbc:mysql://localhost:3306/jstltest?useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC"
         user = "assegd"  password = "assegd"/>
         
     <sql:transaction dataSource = "${snapshot}">
			      <sql:query  sql = "select * from student" var = "result" />
				      <table border = "1" width = "100%">
				         <tr><th>ID</th><th>Name</th><th>Language</th></tr>   
				       <c:forEach var = "row" items = "${result.rows}">
				         <tr><td><c:out value = "${row.id}"/></td><td><c:out value = "${row.name}"/></td><td><c:out value = "${row.lang}"/></td></tr>
				       </c:forEach>
				      </table>
			      <br>
			      
			      <p>After updating data</p>
			      <sql:update sql = "INSERT INTO student VALUES(2,'Sara','JS')" var = "update" />
			      <sql:update sql = "Update student set name ='Assegdachew' where id=1"/>
			      <sql:query sql = "select * from student" var = "result2" />
			      <table border = "1" width = "100%">
			         <tr><th>ID</th><th>Name</th><th>Language</th></tr>   
			       <c:forEach var = "row" items = "${result2.rows}">
			         <tr><td><c:out value = "${row.id}"/></td><td><c:out value = "${row.name}"/></td><td><c:out value = "${row.lang}"/></td></tr>
			       </c:forEach>
			      </table>
     </sql:transaction>
	<br>
	<br>
	<form action="/">
		<input type="submit" value="Back to home">
	</form>

</body>
</html>