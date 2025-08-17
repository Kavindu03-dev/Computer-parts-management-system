<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Account Created</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
            background-color: #e3f2fd; 
        }

        .container {
            text-align: center;
            padding: 20px;
            background-color: #ffffff; 
            border-radius: 10px;
            box-shadow: 0 2px 10px rgba(0, 0, 0, 0.2);
            max-width: 600px; 
        }

        .success-message {
            font-size: 24px;
            color: #2196F3; 
            margin-bottom: 20px;
        }

        .icon {
            font-size: 50px; 
            margin: 0 10px;
            color: #2196F3; 
        }

        .note {
            font-size: 18px; 
            color: #333; 
            margin-bottom: 20px;
        }

        .login-button {
            background-color: #4CAF50; 
            color: white; 
            padding: 10px 20px; 
            border: none; 
            border-radius: 5px; 
            font-size: 16px; 
            cursor: pointer; 
            text-decoration: none; 
        }

        .login-button:hover {
            background-color: #45a049; 
        }
    </style>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css"> <!-- Font Awesome for icons -->
</head>
<body>
    <div class="container">
        <div class="success-message">
            <i class="fas fa-check-circle icon"></i> <!-- Check icon -->
            <span>Account Created Successfully!</span>
            <i class="fas fa-thumbs-up icon"></i> <!-- Thumbs up icon -->
        </div>
        <div class="note">
            Thank you for registering with us! You can now log in and start using your account.
            <br><br>
            <strong>Log in once to see your profile.</strong>
        </div>
        <a href="Login.jsp" class="login-button">Log In</a> <!-- Link to login page -->
    </div>
</body>
</html>
