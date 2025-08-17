<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Success</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #000; 
            color: #f5f5f5; 
            margin: 0;
            padding: 0;
            display: flex;
            flex-direction: column; 
            justify-content: center;
            align-items: center;
            height: 100vh;
        }

        h1 {
            color: #f5f5f5; 
            font-size: 36px;
            background-color: #333; 
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(255, 255, 255, 0.1); 
            text-align: center;
            margin-bottom: 20px; 
        }

        .home-button {
            padding: 12px 20px;
            background-color: #444; 
            color: white;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            font-size: 16px;
            transition: background-color 0.3s;
        }

        .home-button:hover {
            background-color: #666; 
        }
    </style>
</head>
<body>

<h1>Successfully Changed</h1>


<form action="Home.jsp" method="get">
    <button type="submit" class="home-button">Go to Home</button>
</form>

</body>
</html>
