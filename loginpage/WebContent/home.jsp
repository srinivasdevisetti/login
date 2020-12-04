<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"  isELIgnored="false"%>
    <%@ page import = "java.io.*,java.util.*,java.sql.*"%>
<%@ page import = "javax.servlet.http.*,javax.servlet.*" %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/sql" prefix = "sql"
%>
<!DOCTYPE html>
<html>
<head>
 <link rel="stylesheet" href="style.css">
<meta charset="ISO-8859-1">
<title>users</title>
</head>
<body>
<h1>List of Users</h1>
   <sql:setDataSource var = "snapshot" driver = "com.mysql.jdbc.Driver"
         url = "jdbc:mysql://localhost/users"
         user = "root" password = "14597"/>
         <sql:query dataSource = "${snapshot}" var = "result">
         SELECT * from details;
      </sql:query>
      <table border = "1">
         <tr>
            <th>name</th>
            <th>number</th>
            <th>username</th>
            <th>password</th>
         </tr>
         <c:forEach var = "row" items = "${result.rows}">
            <tr>
               <td> <c:out value = "${row.name}"/></td>
               <td> <c:out value = "${row.number}"/></td>
               <td> <c:out value = "${row.username}"/></td>
               <td> <c:out value = "${row.password}"/></td>
            </tr>
         </c:forEach>
      </table>
</body>
</html>