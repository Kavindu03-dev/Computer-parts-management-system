<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Add Item to Cart</title>
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;500;700&display=swap" rel="stylesheet">
    <style>
       
        * {
            box-sizing: border-box;
            margin: 0;
            padding: 0;
        }

       
        body {
            font-family: 'Poppins', sans-serif;
            background: url('https://img.freepik.com/premium-photo/computer-components-black-background_160097-298.jpg') no-repeat center center fixed;
            background-size: cover;
            color: #f5f5f5;
            overflow-x: hidden;
        }

        
        body::before {
            content: '';
            position: absolute;
            top: 0;
            left: 0;
            right: 0;
            bottom: 0;
            background: rgba(0, 0, 0, 0.5);
            backdrop-filter: blur(5px);
            z-index: -1;
        }

      
        .container {
            max-width: 600px;
            margin: 80px auto;
            background-color: rgba(50, 50, 50, 0.9);
            padding: 40px;
            border-radius: 20px;
            box-shadow: 0 10px 30px rgba(0, 0, 0, 0.7);
            text-align: center;
        }

       
        h1 {
            font-size: 2.5em;
            color: #f5f5f5;
            text-transform: uppercase;
            letter-spacing: 2px;
            font-weight: 700;
            margin-bottom: 20px;
        }


        input[type="text"], input[type="number"] {
            width: 90%;
            padding: 12px;
            border: 1px solid #888;
            border-radius: 10px;
            font-size: 1em;
            background-color: #444;
            color: white;
            margin-bottom: 15px;
        }


        input[type="submit"] {
            padding: 12px 40px;
            font-size: 1.2em;
            border: none;
            border-radius: 50px;
            background-color: #28a745;
            color: white;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }

        input[type="submit"]:hover {
            background-color: #218838;
        }

      
        .footer {
            text-align: center;
            margin-top: 80px;
            font-size: 0.9em;
            color: #aaaaaa;
        }
    </style>
</head>
<body>


    <div class="container">
        <h1>Add Item to Cart</h1>
        <form action="OrderInsert" method="post">
            <input type="text" name="name" placeholder="Name" required>
            <input type="text" name="product" placeholder="Product" required>
            <input type="text" name="product_id" placeholder="Product ID" required>
            <input type="number" name="price" placeholder="Price" step="0.01" required>
            <input type="text" name="address" placeholder="Address" required>
            <input type="number" name="quantity" placeholder="Quantity" min="1" required>

            <input type="submit" name="submit" value="Add to Cart">
        </form>
    </div>

   
    <div class="footer">
        &copy; 2024 Online Store. All rights reserved.
    </div>

</body>
</html>
