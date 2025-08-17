<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Order Deletion Failed</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #000; 
            color: #f5f5f5; 
            margin: 0;
            padding: 0;
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: center;
            height: 100vh;
        }

        h1 {
            color: #f5f5f5; 
            font-size: 36px;
            margin-bottom: 20px;
        }

        .message {
            background-color: #900; 
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(255, 255, 255, 0.1); 
            text-align: center;
            margin-bottom: 20px; 
        }

        .home-button {
            background-color: #444;
            color: white;
            padding: 12px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            font-size: 16px;
            transition: background-color 0.3s;
            text-decoration: none;
            width: 200px; 
            text-align: center; 
        }

        .home-button:hover {
            background-color: #666; 
        }
    </style>
</head>
<body>
    <div class="message">
        <h1>Failed to Delete Order</h1>
    </div>


    <a href="home.jsp" class="home-button">Go to Home</a>
</body>
</html>
