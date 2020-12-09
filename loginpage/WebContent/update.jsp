
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

  <h1 >update User  </h1>
   <% String name =request.getParameter("name"); 
  
  
  %>
  
  <form action="update" method="post">
    <input type="hidden" name="name" value="<%=name%>" />
      <table >
     
         <tr>
            <td>name</td>
            <td><input type="text" name="uname"></td>
         </tr>
          <tr>
            <td>mobile number</td>
            <td><input type="text" name="unumber"> </td>
         </tr>
          <tr>
            <td>username</td>
            <td><input type="text" name="uusername"></td>
         </tr>
          <tr>
            <td>password</td>
            <td><input type="text" name="upassword"></td>
         </tr>
          <tr>
            <td><input type="submit"></td>
           
         </tr>
       
      </table>
      </form>
      
</body>
</html>