 <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <!DOCTYPE html>
<!-- Created By Lahu shinde -->
<html lang="en" dir="ltr">
<head> 
<meta charset="UTF-8">
<title>Contact Us for Booking</title>
<link rel="stylesheet" href="contact.css">
<!-- Fontawesome CDN Link -->
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.2/css/all.min.css" />
<meta name="viewport" content="width=device-width, initial-scale=1.0">
</head>
<body> 
	<div class="container">
		<div class="content">
			<div class="left-side">
				<div class="address details">
					<i class="fas fa-map-marker-alt"></i>
					<div class="topic">Address</div>
					<div class="text-one">Shyam Nagar, NP12</div>
					<div class="text-two">Mumbai 403572</div>
				</div>
				<div class="phone details">
					<i class="fas fa-phone-alt"></i>
					<div class="topic">Phone</div>
					<div class="text-one">+91 9770158722</div>
					<div class="text-two">+91 7874965170</div>
				</div>
				<div class="email details">
					<i class="fas fa-envelope"></i>
					<div class="topic">Email</div>
					<div class="text-one"> info@toursandtravels.com</div>
					<div class="text-two">tourstravels@gmail.com</div>
				</div>
			</div>
			<div class="right-side">
				<div class="topic-text">Send us a message</div>
				<p>If you have  any types of queries related
					to my tours and travels, you can send me message from here.Our travel experts
					 can help you book now.</p>
				<form action="UserRequestNotedAdmin.jsp" method="post">
					<div class="input-box">
						<input type="text" placeholder="Enter your name" required>
					</div>
					<div class="input-box">
						<input type="email" placeholder="Enter your email" required>
					</div>
					<div class="input-box message-box"></div>
					<div class="button">
						<input type="submit" value="Send Now">
					</div>
				</form>
			</div>
		</div>
	</div>
</body>
</html>