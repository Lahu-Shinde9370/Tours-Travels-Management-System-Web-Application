<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Adventure Tours</title>
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

        .image img {
            width: 100%;
            max-width: 300px; /* Adjust the max-width as needed */
            height: 200px;
            border-radius: 8px;
            transition: transform 0.3s ease;
        }

        .image img:hover {
            transform: scale(1.05);
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
        <h1>Adventure Tours</h1>
        <!-- Add content specific to Adventure Tours -->
        <p>Get ready for adrenaline-pumping experiences with our adventure tours. From hiking and trekking to rafting and safari, we offer thrilling adventures for outdoor enthusiasts.</p>
        <div class="image">
            <img src="../images/t1.jpg" alt="Adventure Tour 1">
            <img src="../images/t2.jpg" alt="Adventure Tour 2">
            <img src="../images/t3.jpg" alt="Adventure Tour 3">
        </div>
        <form action="../booking.jsp" method="post">
         <div class="checkbox-container">
            <div class="checkbox-item">
                <input type="radio" id="city1" name="city">
                <label for="city1">Africa</label>
            </div>
            <div class="checkbox-item">
                <input type="radio" id="city2" name="city">
                <label for="city2">Asia</label>
            </div>
            <div class="checkbox-item">
                <input type="radio" id="city3" name="city">
                <label for="city3">North America</label>
            </div>
        </div> 
        <input type="submit" value="Next" class="book-button">
        </form>
       
    </div>
</body> 
</html>
