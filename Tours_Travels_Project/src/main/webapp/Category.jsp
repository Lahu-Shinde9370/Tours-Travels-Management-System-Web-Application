<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head> 
<meta charset="UTF-8">
<title>Go Travel & Tourism Ltd.</title>
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
    margin-bottom: 20px;
    font-family: "Segoe UI", Tahoma, Geneva, Verdana, sans-serif;
    font-size: 28px;
    font-weight: bold;
    text-shadow: 1px 1px 2px rgba(0, 0, 0, 0.5);
  }

  p {
    text-align: justify;
    line-height: 1.6;
    color: #333;
    font-size: 16px;
    padding: 10px;
    border-left: 5px solid #007bff;
    background-color: #f9f9f9;
    box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
    margin-bottom: 15px;
  }

  a {
    display: block;
    text-align: center;
    text-decoration: none;
    color: #007bff;
    margin-bottom: 10px;
    padding: 10px;
    border-radius: 5px;
    background-color: #f0f0f0;
    transition: background-color 0.3s;
  }

  a:hover {
    background-color: #ddd;
  }

  h3 {
    text-align: center;
    color: #333;
    margin-top: 30px;
    margin-bottom: 15px;
    font-family: "Segoe UI", Tahoma, Geneva, Verdana, sans-serif;
    font-size: 24px;
    font-weight: bold;
    text-shadow: 1px 1px 2px rgba(0, 0, 0, 0.5);
  }

  .category-link {
    position: relative;
    display: inline-block;
    width: 200px;
    margin: 10px;
    overflow: hidden;
    border-radius: 10px;
    box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
  }

  .category-link img {
    display: block;
    width: 100%;
    height: auto;
    border-radius: 10px 10px 0 0;
    transition: transform 0.3s;
  }

  .category-link:hover img {
    transform: scale(1.1);
  }

  .category-link span {
    display: block;
    padding: 10px;
    background-color: #007bff;
    color: #fff;
    font-weight: bold;
    text-align: center;
    border-radius: 0 0 10px 10px;
    text-shadow: 1px 1px 2px rgba(0, 0, 0, 0.5);
  }

  ul {
    list-style-type: none;
    padding: 0;
    margin: 0;
  }

  ul li {
    position: relative;
    padding-left: 20px;
    margin-bottom: 10px;
  }

  ul li::before {
    content: "\2022";
    position: absolute;
    left: 0;
    color: #007bff;
    font-size: 20px;
  }
</style>
</head>
<body> 
<div class="container">
  <h1>Welcome to Go Travel & Tourism Ltd.</h1>
  <p>A Tours and Travels Management System is a software solution designed to streamline and automate various aspects of the travel and tourism industry. It helps travel agencies, tour operators, and other businesses in this sector manage their operations efficiently, provide better customer service, and increase profitability. Here are some categories and key features of a typical Tours and Travels Management System:</p>
  <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Saepe soluta magni aliquam doloremque unde sint quos. Debitis, fugiat iure! Autem perspiciatis dolorem tempora adipisci, eligendi fugit ex quos assumenda est!</p>
  <p>Itinerary and Trip Planning:</p>
  <ul>
    <li>Creating and customizing travel itineraries.</li>
    <li>Suggesting tours, activities, and attractions.</li>
    <li>Integration with maps and navigation services.</li>
    <li>Managing and updating information on hotels, airlines, rental cars, and tour packages.</li>
    <li>Tracking available inventory, prices, and promotions.</li>
    <li>Integrating with global distribution systems (GDS) for real-time data.</li>
  </ul>
  <h3>Category</h3>
  <a class="category-link" href="Tour's Categories/FamilyTours.jsp">
    <img src="images/familytour.jpg" alt="Family Tours">
    <span>Family Tours</span>
  </a>
  <a class="category-link" href="Tour's Categories/religioustour.jsp">
    <img src="images/religioustour.jpg" alt="Religious Tours">
    <span>Religious Tours</span>
  </a> 
  <a class="category-link" href="Tour's Categories/advanturetour.jsp">
    <img src="images/advanturetour.jpg" alt="Adventure Tours">
    <span>Adventure Tours</span>
  </a>
  <a class="category-link" href="Tour's Categories/specialeventtour.jsp">
    <img src="images/specialtor.jpg" alt="Special Event Tours">
    <span>Special Event Tours</span>
  </a>
  <a class="category-link" href="Tour's Categories/nationalpark.jsp">
    <img src="images/nationalparktour.jpg" alt="National Parks">
    <span>National Parks</span>
  </a>
</div>
</body>
</html>
