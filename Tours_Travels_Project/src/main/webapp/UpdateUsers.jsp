<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en" dir="ltr">
<head>
    <meta charset="UTF-8">
    <title>Update User Information</title>
    <link rel="stylesheet" href="RegistrationPage.css"> <!-- Use the same CSS file as the registration page -->
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
</head>
<body>
    <div class="container">
        <div class="title">Update User Information</div>
        <div class="content">
            <form action="UpdateUsersDB.jsp" method="post">
                <div class="user-details">
                    <!-- Email field (readonly) -->
                    <div class="input-box">
                        <span class="details">Email</span>
                        <input type="text" placeholder="Enter only previous E-mail for update" name="email" required>
                    </div>
                    <!-- Full Name -->
                    <div class="input-box">
                        <span class="details">Full Name</span>
                        <input type="text" placeholder="Enter your name" name="name"  >
                    </div>
                    <!-- Username -->
                    <div class="input-box">
                        <span class="details">Username</span>
                        <input type="text" placeholder="Enter your username"  name="uname"  >
                    </div>
                    <!-- Phone Number -->
                    <div class="input-box">
                        <span class="details">Phone Number</span>
                        <input type="text" placeholder="Enter your number"  name="pno"  >
                    </div>
                    <!-- Password -->
                     <div class="input-box">
                        <span class="details">Password</span>
                        <input type="password" placeholder="Enter your password"  name="pass"  >
                    </div>
                </div>  
                <div class="button">
                    <input type="submit" value="Update">
                </div>
            </form>
        </div>
    </div>
</body>
</html>
