<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Welcome</title>
    <style>
        /* Your CSS styles here */
        body {
            font-family: Arial, sans-serif;
            height: 100vh;
            margin: 0;
            padding: 0;
            background-image: url("images/ship.jpg"); /* Add your background image path here */
            background-size: cover;
            background-position: center;
            background-repeat: no-repeat;
        } 
        .container {
            max-width: 600px;
            margin: 20px auto;
            padding: 20px;
            background-color: rgba(255, 255, 255, 0.8); /* Semi-transparent white background */
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }
        h1 {
            text-align: center;
            color: #333;
            margin-bottom: 20px;
        }
        p {
            text-align: center;
            color: #666;
            line-height: 1.6;
        }
        .message {
            font-weight: bold;
            color: #007bff;
        }
        .button-container {
            text-align: center;
            margin-top: 20px;
        }
        .ok-button {
            background-color: #007bff;
            color: #fff;
            border: none;
            padding: 10px 20px;
            border-radius: 5px;
            cursor: pointer;
            font-size: 16px;
            transition: background-color 0.3s;
        }
        .ok-button:hover {
            background-color: #0056b3;
        }
    </style>
</head> 
<body>
    <div class="container">
        <h1>Welcome</h1>
        <p>Your tour has been booked successfully!</p>
        <p class="message">Further details will be sent to your email and registered mobile number.</p>
        <p class="message">Thank you for choosing our service!</p>
        <div class="button-container">
            <button class="ok-button" onclick="redirectToIndex()">OK</button>
        </div>
    </div>

    <script>
        function redirectToIndex() {
            window.location.href = "index.jsp";
        }
    </script>
</body>
</html>
