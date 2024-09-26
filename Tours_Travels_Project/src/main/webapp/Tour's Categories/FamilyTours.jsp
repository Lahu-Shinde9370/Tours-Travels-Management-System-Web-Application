<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Family Tours</title>
    <style>
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background-image: url("images/tour.jpg");
            background-repeat: no-repeat;
            background-position: center center;
            background-attachment: fixed;
            background-size: cover;
            margin: 0;
            padding: 0;
        } 
        
        .container { 
            max-width: 800px;
            margin: 0 auto; 
            padding: 20px;
            background-color: rgba(255, 255, 255, 0.8); /* Background color with transparency */
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.3);
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
            padding-bottom: 10px;
            border-bottom: 1px solid #ccc;
            margin-bottom: 20px;
        }
        .image-container {
            text-align: center;
            margin-bottom: 30px;
        }
        .image-container img {
            width: 100%;
            max-width: 300px;
            height: 200px;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.3);
            transition: transform 0.3s ease;
        }
        .image-container img:hover {
            transform: scale(1.05);
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
        .checkbox-container {
            text-align: center;
            margin-bottom: 20px;
        }
        .checkbox-item {
            margin-bottom: 10px;
        }
    </style>
</head> 
<body>
    <div class="container">
        <h1>Family Tours</h1>
        <div class="image-container">
            <img src="../images/familytour4.jpg" alt="Family Tour 1">
            <img src="../images/familytour2.jpg" alt="Family Tour 2">
            <img src="../images/familytour3.jpg" alt="Family Tour 3">
            <img src="../images/elloracave.jpg" alt="Family Tour 1">
            <img src="../images/elloracave1.jpg" alt="Family Tour 2">
            <img src="../images/Elephanta-Caves.jpg" alt="Family Tour 3">
        </div>
         
        <p>Family tours are specifically designed to engage travelers of all ages. Many tours include a mix of activities that the whole family will love as well as some downtime for rest and relaxation. Family vacations are popular because it gives a chance for grandparents, parents, and grandchildren to spend quality time together and experience the world while being surrounded by other travelers that are the same age and have the same interests.</p>
        
        <div class="checkbox-container">
            <div class="checkbox-item">
                <input type="checkbox" id="city1" name="city1">
                <label for="city1">Ellora Caves</label>
            </div>
            <div class="checkbox-item">
                <input type="checkbox" id="city2" name="city2">
                <label for="city2">Verul Leni</label>
            </div>
            <div class="checkbox-item">
                <input type="checkbox" id="city3" name="city3">
                <label for="city3">Elephanta Caves</label>
            </div>
        </div>
        
        <a href="../booking.jsp" class="book-button">Next</a>
    </div>
</body>
</html>
