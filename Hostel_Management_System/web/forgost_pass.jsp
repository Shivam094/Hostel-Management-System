<%@page import="java.sql.*"%>
<%@page import="java.io.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="admin_login_css.css"
    </head>
    <body>
        <div class="login-form">
    <form action="update_pass.jsp" method="post">
    <h1>Update Password!!</h1>
    <div class="form-group">
      <label for="number">Phone Number:</label>
      <input type="text" id="number" name="num" required>
    </div>
    <div class="form-group">
      <label for="password">New Password:</label>
      <input type="password" id="password" name="pwd" required>
    </div>
    <button type="submit">Submit</button>
  </form>
</div>  
    </body>
</html>