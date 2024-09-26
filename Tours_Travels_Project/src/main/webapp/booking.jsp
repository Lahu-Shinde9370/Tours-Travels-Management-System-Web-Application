<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Booking</title>
    <style>
        /* Your CSS styles here */
        body {
            font-family: Arial, sans-serif;
            background-image: url("images/Travel_image.jpg"); /* Add your background image path here */
            background-size: cover;
            background-position: center;
            margin: 0;
            padding: 0;
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

        form {
            display: flex;
            flex-direction: column;
        }

        label {
            font-weight: bold;
            margin-bottom: 5px;
        }

        input[type="text"],
        input[type="email"],
        textarea {
            width: 100%;
            padding: 10px;
            margin-bottom: 20px;
            border: 1px solid #ccc;
            border-radius: 5px;
            box-sizing: border-box;
        }

        .vehicle-images {
            display: flex;
            justify-content: space-around;
            margin-bottom: 20px;
        }

        .vehicle-image {
            width: 100px; /* Fixed width */
            height: 100px; /* Fixed height */
            object-fit: cover; /* Ensure the image covers the container */
            border-radius: 5px; /* Optional: Add border-radius for rounded corners */
        }

        .payment-methods {
            display: flex;
            justify-content: space-around;
        }

        .payment-method {
            display: flex;
            align-items: center;
            margin-bottom: 20px;
        }

        .payment-method input[type="radio"] {
            margin-right: 10px;
        }

        input[type="submit"] {
            background-color: #007bff;
            color: #fff;
            padding: 10px 20px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            transition: background-color 0.3s;
        }

        input[type="submit"]:hover {
            background-color: #0056b3;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>Booking</h1>
        <form action="bookingDB.jsp" method="post">
            <input type="hidden" name="category" value="<%= request.getParameter("category") %>">
            <label for="name">Name:</label>
            <input type="text" id="name" name="name" required>
            <label for="email">Email:</label>
            <input type="email" id="email" name="email" required>
            <label for="dates">Preferred Travel Dates:</label>
            <textarea id="dates" name="dates" required></textarea>
            <label for="preferences">Additional Preferences:</label>
            <textarea id="preferences" name="preferences"></textarea>

            <h2>Select Vehicle:</h2> 
            <div class="vehicle-images" >
                <label for="car"><input type="radio" id="car" name="vehicle" value="car"><img class="vehicle-image" src="images/Car image.jpg" alt="Car"></label>
                <label for="bike"><input type="radio" id="bike" name="vehicle" value="bike"><img class="vehicle-image" src="images/bike.jpeg" alt="Bike"></label>
                <label for="bus"><input type="radio" id="bus" name="vehicle" value="bus"><img class="vehicle-image" src="images/redbus.jpg" alt="Bus"></label>
            </div>

            <h2>Select Payment Method:</h2>
            <div class="payment-methods">
                <div class="payment-method">
                    <input type="radio" id="creditCard" name="paymentMethod" value="creditCard">
                    <label for="creditCard">Credit Card</label>
                </div>
                <div class="payment-method">
                    <input type="radio" id="paypal" name="paymentMethod" value="paypal">
                    <label for="paypal">PayPal</label>
                </div>
                <div class="payment-method">
                    <input type="radio" id="bankTransfer" name="paymentMethod" value="bankTransfer">
                    <label for="bankTransfer">Bank Transfer</label>
                </div>
            </div>

            <input type="submit" value="Book Now">
        </form>
    </div>
</body>
</html>
