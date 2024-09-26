<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Buttons with Background Image</title>
    <style>
        body {
            background-image: url('images/pencils.jpg');
            background-size: cover;
            background-position: center;
            margin: 0;
            padding: 0;
            font-family: Arial, sans-serif;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }

        .form-container {
            background-color: rgba(255, 255, 255, 0.8);
            padding: 20px;
            border-radius: 10px;
            text-align: center;
            box-shadow: 0 0 20px rgba(0, 0, 0, 0.2); /* Add shadow for depth */
        }

        h1 {
            color: #007bff; /* Set heading color */
            margin-bottom: 20px;
        }

        .button-container {
            display: flex;
            justify-content: center;
            align-items: center;
            gap: 20px; /* Add space between buttons */
            margin-top: 20px; /* Add space above buttons */
        }

        .button {
            padding: 10px 20px;
            background-color: #007bff;
            color: #fff;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            transition: background-color 0.3s;
        }

        .button:hover {
            background-color: #0056b3;
        }
    </style>
</head>
<body>
    <div class="form-container">
        <h1>Welcome!</h1>
        <div class="button-container">
            <form action="UpdateUsers.jsp">
                <button class="button" onclick="window.location.href='UpdateUsers.jsp'">Update Users</button>
            </form>
            <form action="DeleteUsers.jsp">
                <button class="button" onclick="window.location.href='DeleteUsers.jsp'">Delete Users</button>
            </form>
            <form action="AccessUsers.jsp">
                <button class="button" onclick="window.location.href='AccessUsers.jsp'">Access Users</button>
            </form>
        </div>
    </div>
</body>
</html>
