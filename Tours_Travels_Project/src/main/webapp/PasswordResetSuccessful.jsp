<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Password Reset Success</title>
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
  <style>
    body {
      font-family: Arial, sans-serif;
      background-image: url('images/password-security.jpg'); /* Add your background image path */
      background-size: cover;
      background-repeat: no-repeat;
      background-attachment: fixed;
      color: black; /* Set text color to white */
      
    }

    .container {
      margin-top: 50px;
    }

    .card {
      border: none;
      border-radius: 10px;
      box-shadow: 0px 2px 10px rgba(0, 0, 0, 0.1);
      animation: fadeIn 1s ease-in-out;
    }

    .btn-login {
      margin-top: 20px;
    }

    @keyframes fadeIn {
      from { opacity: 0; }
      to { opacity: 1; }
    }
  </style>
</head>
<body>
  <div class="container">
    <div class="row justify-content-center">
      <div class="col-md-6">
        <div class="card">
          <div class="card-body">
            <h3 class="card-title text-center">Password Reset Successful</h3>
            <p class="card-text text-center">Your password has been successfully reset.</p>
            <button class="btn btn-primary btn-block btn-login" onclick="window.location.href='login.jsp'">Back to Login</button>
          </div>
        </div>
      </div>
    </div>
  </div>
</body>
</html>
