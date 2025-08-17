<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Delete Order</title>
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

        form {
            background-color: #333; 
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(255, 255, 255, 0.1); 
        }

        label {
            color: #f5f5f5;
            margin-bottom: 10px;
            display: block;
        }

        input[type="text"] {
            width: calc(100% - 20px); 
            padding: 10px;
            margin-bottom: 15px;
            border: 1px solid #ddd; 
            border-radius: 5px;
            background-color: #f9f9f9; 
            color: #333; 
        }

        input[type="submit"] {
            width: 100%;
            padding: 12px;
            background-color: #900; 
            color: white;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            font-size: 16px;
            transition: background-color 0.3s;
        }

        input[type="submit"]:hover {
            background-color: #b00; 
        }
    </style>
</head>
<body>
    <h1>Delete Order</h1>
    <form action="DeleteOrderServlet" method="post">
        <label for="order_id">Enter Order ID:</label>
        <input type="text" id="order_id" name="order_id" required>
        <br>
        <input type="submit" value="Delete Order">
    </form>
</body>
</html>

