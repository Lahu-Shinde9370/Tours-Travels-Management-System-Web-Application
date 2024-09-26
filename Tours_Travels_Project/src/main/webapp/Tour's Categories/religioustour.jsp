<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Religious Tours</title>
    <style>
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background-color: #f2f2f2;
            margin: 0;
            padding: 0;
        }

        .container {
            max-width: 800px;
            margin: 20px auto;
            padding: 20px;
            background-color: #fff;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }

        h1 {
            text-align: center;
            color: #333;
            font-size: 36px;
            text-shadow: 2px 2px 4px rgba(0, 0, 0, 0.5);
            margin-bottom: 20px;
        }

        p {
            text-align: justify;
            line-height: 1.8;
            color: #444;
            font-size: 18px;
            margin-bottom: 20px;
        }

        .image-container {
            margin-bottom: 30px;
            display: flex;
            justify-content: space-between;
            flex-wrap: wrap;
        }

        .image-container img {
            width: calc(33.33% - 10px);
            margin-bottom: 20px;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.3);
            transition: transform 0.3s ease;
        }

        .image-container img:hover {
            transform: scale(1.05);
        }

        .checkbox-container {
            text-align: center;
            margin-bottom: 20px;
        }

        .checkbox-item {
            margin-bottom: 10px;
        }

        .book-button {
            display: block;
            width: 200px;
            margin: 0 auto;
            padding: 10px 20px;
            background-color: #007bff;
            color: #fff;
            text-align: center;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            transition: background-color 0.3s;
            text-decoration: none;
        }

        .book-button:hover {
            background-color: #0056b3;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>Religious Tours</h1>
        <!-- Add content specific to Religious Tours -->
        <p>Embark on a spiritual journey with our religious tours. Explore sacred sites, visit holy temples, and participate in religious ceremonies around the world.</p>
        <div class="image-container">
            <img src="../images/temple-1.jpg" alt="Temple 1"> 
            <img src="../images/temple-2.jpeg" alt="Temple 2">
            <img src="../images/temple-3.jpeg" alt="Temple 3">
            <img src="../images/temple-4.jpeg" alt="Temple 4">
            <img src="../images/temple-5.jpg" alt="Temple 5">
            <img src="../images/temple-6.jpg" alt="Temple 5">
        </div>
        <div class="checkbox-container">
            <div class="checkbox-item">
                <input type="checkbox" id="religious1" name="religious1">
                <label for="religious1">Kedarnath</label>
            </div>
            <div class="checkbox-item">
                <input type="checkbox" id="religious2" name="religious2">
                <label for="religious2">Varanasi</label>
            </div>
            <div class="checkbox-item">
                <input type="checkbox" id="religious3" name="religious3">
                <label for="religious3"> Ayodhya</label>
            </div>
        </div>
        <a href="../booking.jsp" class="book-button">Next</a>
    </div>
</body>
</html>
