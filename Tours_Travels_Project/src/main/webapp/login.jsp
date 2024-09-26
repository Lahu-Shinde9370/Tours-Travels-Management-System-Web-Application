 <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
 
<!DOCTYPE html> 
<!-- Tours and Travels | Login Page -->
<html>
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Tours and Travels | Login Form</title>
  <link rel="stylesheet" href="login.css">
</head>
<body> 
  <div class="wrapper">
    <form action="LoginDB.jsp" method="post">
      <h2>Login</h2>  
      <div class="input-field">
        <input type="email" name="email" required> <!-- Add name attribute -->
        <label>Enter your email</label>
      </div>
      <div class="input-field"> 
        <input type="password" name="password" required> <!-- Add name attribute -->
        <label>Enter your password</label>
      </div>
      <div class="forget">
        <label for="remember">
          <input type="checkbox" id="remember" name="remember"> <!-- Add name attribute -->
          <p>Remember me</p>
        </label>
        <a href="ForgotPassword.jsp">Forgot password?</a>
      </div>
      <button type="submit">Log In</button>
      <div class="register">
        <p>Don't have an account? <a href="RegistrationPage.jsp">Register</a></p>
      </div>
    </form>
     
  </div>
  
</body>
</html>
