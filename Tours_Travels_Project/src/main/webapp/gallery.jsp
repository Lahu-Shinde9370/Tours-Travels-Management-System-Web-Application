<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%> 
<!DOCTYPE html>
<html>
<head>
<title>Travel_image</title> 
<style>
    body {
        background-color: #f0f0f0;
        font-family: Arial, sans-serif;
        margin: 0;
        padding: 0;
    }

    .container {
        display: grid;
        grid-template-columns: repeat(3, 1fr);
        gap: 20px;
        margin: 20px;
        padding: 20px;
    }

    .image-box {
        border: 1px solid #ddd;
        border-radius: 5px;
        overflow: hidden;
        box-shadow: 0 0 5px rgba(0, 0, 0, 0.3);
    }

    .image-box img {
        width: 100%;
        height: auto;
        display: block;
    }

    .image-box:hover {
        transform: scale(1.05);
        transition: transform 0.3s ease-in-out;
    }
</style>
</head>
<body>
    <div class="container">
        <div class="image-box">
            <img src="images/Travel_image.jpg" alt="This is my image." />
        </div>
        <div class="image-box">
            <img src="images/t1.jpg" alt="This is my second image." />
        </div>
        <div class="image-box">
            <img src="images/t2.jpg" alt="My third image." />
        </div>
        <div class="image-box">
            <img src="images/t6.jpg" alt="This is my image." />
        </div>
        <div class="image-box">
            <img src="images/t4.jpg" alt="This is my second image." />
        </div> 
        <div class="image-box">
            <img src="images/t5.jpg" alt="My third image." />
        </div>
        <div class="image-box">
            <img src="images/t7.jpg" alt="My third image." />
        </div>
        <div class="image-box">
            <img src="images/t8.jpg" alt="My third image." />
        </div>
        <div class="image-box">
            <img src="images/T13.png" alt="My third image." />
        </div>
    </div>
</body>
</html>
