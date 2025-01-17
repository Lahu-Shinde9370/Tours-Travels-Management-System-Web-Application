<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<!-- Created By CodingLab - www.codinglabweb.com -->
<html lang="en" dir="ltr">
  <head>
    <meta charset="UTF-8"> 
    <title> Responsive Registration Form | CodingLab </title>
    <link rel="stylesheet" href="RegistrationPage.css"> 
     <meta name="viewport" content="width=device-width, initial-scale=1.0">
   </head> 
<body> 
  <div class="container"> 
    <div class="title">Registration</div>
    <div class="content">
      <form action="RegisterDB.jsp" method="post"> 
        <div class="user-details">
          <div class="input-box">
            <span class="details">Full Name</span>
            <input type="text" placeholder="Enter your name" name="name" required>
          </div>
          <div class="input-box">
            <span class="details">Username</span>
            <input type="text" placeholder="Enter your username"  name="uname" required>
          </div>
          <div class="input-box">
            <span class="details">Email</span>
            <input type="text" placeholder="Enter your email"  name="email" required>
          </div>
          <div class="input-box">
            <span class="details">Phone Number</span>
            <input type="text" placeholder="Enter your number"  name="pno" required>
          </div>
          <div class="input-box">
            <span class="details">Password</span>
            <input type="password" placeholder="Enter your password"  name="pass1" required>
          </div>
          <!-- <div class="input-box">
            <span class="details">Confirm Password</span>
            <input type="text" placeholder="Confirm your password" required>
          </div> -->
        </div>
        <div class="gender-details">
          <input type="radio" name="gender" id="dot-1" value="Male">
          <input type="radio" name="gender" id="dot-2" value="Female">
          <input type="radio" name="gender" id="dot-3" value="Other">
          <span class="gender-title" name="gender">Gender</span>
          <div class="category">	
            <label for="dot-1">
            <span class="dot one"></span>
            <span class="gender" name="gender"  >Male</span>
          </label>
          <label for="dot-2">
            <span class="dot two"></span> 
            <span class="gender" name="gender">Female</span>
          </label>
          <label for="dot-3">
            <span class="dot three"></span>
            <span class="gender" name="gender">other</span>
            </label>
          </div>
        </div>
        <div class="button">
          <input type="submit" value="Register">
        </div>
      </form>
    </div>
  </div>

</body>
</html>