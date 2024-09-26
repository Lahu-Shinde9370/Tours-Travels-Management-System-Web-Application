<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Add Admin</title>
    <link rel="stylesheet" href="UpdateCategory.css"> <!-- Link your CSS file here -->
</head>
<body>
    <h1>Add Admin</h1>
    <form action="AddAdminDB.jsp" method="post">
        <label for="email">Email-id:</label><br>
        <input type="text" id="email" name="email" required><br>
        <label for="password">Password :</label><br>
        <input type="text" id=password name="pass" required><br>
        <input type="submit" value="Add"> 
    </form>
</body>
</html>
