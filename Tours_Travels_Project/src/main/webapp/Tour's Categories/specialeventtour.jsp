<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Special Event Tours</title>
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
            line-height: 1.6;
            color: #666;
            font-size: 18px;
            margin-bottom: 20px;
        }

        .image-container {
            text-align: center;
            margin-bottom: 20px;
        }

        .image-container img {
            width: 100%;
            max-width: 300px;
            height: auto;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.3);
            margin-bottom: 10px;
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
        <h1>Special Event Tours</h1>
        <!-- Add content specific to Special Event Tours -->
        <p>Experience special events around the world with our exclusive tours. From festivals and cultural celebrations to sporting events and concerts, we offer unforgettable experiences that cater to every interest.</p>
        <div class="image-container">
            <img src="../images/lonavala.jpg" alt="Event 1">
            <img src="../images/Alibagh1.jpg" alt="Event 2">
            <img src="../images/Alibagh2.jpg" alt="Event 3">
            <img src="../images/beach.jpg" alt="Event 4">
         </div>
        <div class="checkbox-container">
            <div class="checkbox-item">
                <input type="checkbox" id="event1" name="event1">
                <label for="event1">Lonavala</label>
            </div>
            <div class="checkbox-item">
                <input type="checkbox" id="event2" name="event2">
                <label for="event2">Alibaug</label>
            </div>
            <div class="checkbox-item">
                <input type="checkbox" id="event3" name="event3">
                <label for="event3">Okayama Friendship Garden</label>
            </div>
        </div>
        <a href="../booking.jsp" class="book-button">Next</a>
    </div>
</body>
</html>
