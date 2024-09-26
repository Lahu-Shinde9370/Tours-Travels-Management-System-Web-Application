<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html> 
<head> 
    <meta charset="UTF-8">
    <title>Payment</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-image: url('images/payment.jpg');
            background-size: cover;
            background-position: center;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }

        .container {
            background-color: #fff;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            width: 400px;
        }

        h1 {
            text-align: center;
            color: #333;
            margin-bottom: 20px;
        }

        label {
            font-weight: bold;
        }

        input[type="text"],
        input[type="password"] {
            width: 100%;
            padding: 10px;
            margin-bottom: 20px;
            border: 1px solid #ccc;
            border-radius: 5px;
            box-sizing: border-box;
        }

        .amount {
            text-align: center;
            font-size: 20px;
            font-weight: bold;
            margin-bottom: 20px;
        }

        .pay-button {
            background-color: #007bff;
            color: #fff;
            padding: 10px 20px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            transition: background-color 0.3s;
            width: 100%;
        }

        .pay-button:hover {
            background-color: #0056b3;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>Payment Details</h1>
        <form action="PaymentDB.jsp" method="post">
            <label for="cardholder">Bank Holder Name:</label>
            <input type="text" id="cardholder" name="cardholder" required>
            <label for="cardnumber">Account Number/Card Number:</label>
            <input type="text" id="cardnumber" name="cardnumber" required>
            <label for="cvv">CVV:</label>
            <input type="password" id="cvv" name="cvv" required>
            <div class="amount">Amount: 10,000 RS</div> <!-- This amount is fixed and cannot be changed by the user -->
            <input type="submit" value="Pay Now" class="pay-button">
        </form>
    </div>
</body>
</html>
