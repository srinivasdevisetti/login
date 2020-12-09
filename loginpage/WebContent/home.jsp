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
 <link rel="stylesheet" href="heder.css">
<meta charset="ISO-8859-1">
<title>users</title>
</head>
<body>
<div class="navbar">
  <a href="#home">New web Technologies</a>
  <div class="subnav">
    <button class="subnavbtn">About <i class="fa fa-caret-down"></i></button>
    <div class="subnav-content">
      <a href="#company">Company</a>
      <a href="#team">Team</a>
      <a href="#careers">Careers</a>
    </div>
  </div> 
  <div class="subnav">
    <button class="subnavbtn">Services <i class="fa fa-caret-down"></i></button>
    <div class="subnav-content">
      <a href="#bring">Bring</a>
      <a href="#deliver">Deliver</a>
      <a href="#package">Package</a>
      <a href="#express">Express</a>
    </div>
  </div> <div class="subnav">
    <button class="subnavbtn">Partners <i class="fa fa-caret-down"></i></button>
    <div class="subnav-content">
      <a href="#link1">Link 1</a>
      <a href="#link2">Link 2</a>
      <a href="#link3">Link 3</a>
      <a href="#link4">Link 4</a>
    </div>
  </div>
  <a href="#contact">Contact</a>
</div>

<div style="padding:0 16px">
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
            <th></th>
            <th></th>
         </tr>
         <c:forEach var = "row" items = "${result.rows}">
            <tr>
               <td > <c:out  value = "${row.name}"/> </td>
               
               <td > <c:out value = "${row.number}"/></td>
               <td > <c:out value = "${row.username}"/></td>
               <td > <c:out value = "${row.password}"/></td>
               <td > <a href="delete?name=<c:out  value = "${row.name}"/>">delete</a> </td>
                <td > <a href="update.jsp?name=<c:out  value = "${row.name}"/>">update</a> </td>
            </tr>
         </c:forEach>
      </table>
      
               
      <div id="degign">Designed by Srinivas</div>
</body>
</html>