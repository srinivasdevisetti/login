
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
 <link rel="stylesheet" href="style.css">

<meta charset="ISO-8859-1">
<title>Insert title here</title>
<script src="validation.js"></script>
</head>
<body>

  <h1 >update User  </h1>
   <% String name =request.getParameter("name");  %>
  
  <form name="myform" action="update" method="post" onsubmit="return validateform()">
    <input type="hidden" name="name1" value="<%=name%>" />
        <table >
         <tr>
            <td>name</td>
            <td><input type="text" name="name"><span id="sname"></span></td>
         </tr>
          <tr>
            <td>mobile number</td>
            <td><input type="text" name="number"><span id="numonly"></span></td>
         </tr>
          <tr>
            <td>username</td>
            <td><input type="text" name="username"><span id="suname"></span></td>
         </tr>
          <tr>
            <td>password</td>
            <td><input type="text" name="password"><span id="pass"></span></td>
             <tr>
            <td>re-enter password</td>
            <td><input type="text" name="password2"><span id="samepass"></span></span></td>
         </tr>
          <tr>
            <td><input type="submit"></td>
           
         </tr>
       
      </table>
      </form>
      
</body>
</html>