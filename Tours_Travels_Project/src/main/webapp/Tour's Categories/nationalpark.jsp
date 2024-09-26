<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>National Parks</title>
    <style>
        body {
            font-family: Arial, sans-serif;
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
        }

        p {
            text-align: justify;
            line-height: 1.6;
            color: #666;
        }

        .image {
            text-align: center;
            margin-bottom: 20px;
        }
        
        .image img:hover {
            transform: scale(1.05);
        }

        .image img {
            width: 100%;
            max-width: 300px;
            height: 200px;
            border-radius: 8px;
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
            margin: 20px auto;
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
        <h1>National Parks</h1>
        <!-- Add content specific to National Parks -->
        <p>National Parks Tours</p>
        <p>U.S. National Parks contain some of the most breathtaking landscapes you will ever see. People from all over the world come to the United States to see the Grand Canyon, Yosemite, Bryce National Park, Yellowstone, and Zion, just to name a few.</p>
        <p>Connect with nature and see the rolling rivers and lush green canyons, colorful sandstone canyons and dramatic peaks and cliffs. Just like a regular escorted or guided tour, you will have access to National Park experts who know the region and its history. Prepare to be inspired by the vast beauty that our treasured National Parks have to offer.</p>
        <div class="image">
            <img src="../images/nationalparktour1.jpg" alt="National Parks">
             <img src="../images/nationalparktour2.jpg" alt="National Parks">
              <img src="../images/nationalparktour3.jpg" alt="National Parks">
              <img src="../images/nationalparktour4.jpg" alt="National Parks">
              <img src="../images/nationalparktour.jpg" alt="National Parks">
            
        </div>
        <div class="checkbox-container">
            <div class="checkbox-item">
                <input type="checkbox" id="park1" name="park1">
                <label for="park1">National Park borivali</label>
            </div>
            <div class="checkbox-item">
                <input type="checkbox" id="park2" name="park2">
                <label for="park2">Tadoba-Andhari Tiger Reserve</label>
            </div>
            <div class="checkbox-item">
                <input type="checkbox" id="park3" name="park3">
                <label for="park3">Kaziranga National Park</label>
            </div>
        </div>
        <a href="../booking.jsp" class="book-button">Next</a>
    </div>
</body>
</html>
