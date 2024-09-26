<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Update Category</title>
    <link rel="stylesheet" href="UpdateCategory.css"> <!-- Link your CSS file here -->
</head>
<body>
    <h1>Update Category</h1>
    <form action="UpdateCategorySucess.jsp" method="post">
        <label for="categoryId">Category ID:</label><br>
        <input type="text" id="categoryId" name="categoryId" required><br>
        <label for="categoryName">New Category Name:</label><br>
        <input type="text" id="categoryName" name="categoryName" required><br>
        <input type="submit" value="Update">
    </form>
</body>
</html>
