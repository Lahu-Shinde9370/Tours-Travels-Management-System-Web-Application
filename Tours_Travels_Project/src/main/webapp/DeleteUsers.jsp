<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Delete User's</title>
    <link rel="stylesheet" href="UpdateCategory.css"> <!-- Link your CSS file here -->
</head>
<body>
    <h1>Delete User's</h1>
    <form action="DeleteUsersDB.jsp" method="post">
        <label for="user">User Name :</label><br>
        <input type="text" id=user name="user" required><br>
        <label for="email">Email-id:</label><br>
        <input type="text" id="email" name="email" required><br>
        <input type="submit" value="Delete"> 
    </form>
</body>
</html>
