<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Shopping Cart</title>
    
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;500;700&family=Roboto:wght@400;700&display=swap" rel="stylesheet">

    <style>

        * {
            box-sizing: border-box;
            margin: 0;
            padding: 0;
        }


        body {
            font-family: 'Poppins', sans-serif;
            background: url('https://c0.wallpaperflare.com/preview/326/797/185/red-and-black-computer-motherboard.jpg') no-repeat center center fixed;
            background-size: cover;
            margin: 0;
            padding: 0;
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
            max-width: 1100px;
            margin: 80px auto;
            background-color: rgba(50, 50, 50, 0.9);
            padding: 50px;
            border-radius: 20px;
            box-shadow: 0 10px 30px rgba(0, 0, 0, 0.7);
            text-align: center;
        }


        h1 {
            font-size: 3em;
            color: #f5f5f5;
            text-transform: uppercase;
            letter-spacing: 2px;
            font-weight: 700;
            margin-bottom: 10px;
            position: relative;
        }

        h1::after {
            content: '';
            width: 120px;
            height: 4px;
            background-color: #ffc107;
            display: block;
            margin: 10px auto 0;
        }


        p.subtitle {
            font-size: 1.3em;
            color: #cccccc;
            margin-bottom: 40px;
            font-weight: 500;
        }

       
        .button-container {
            display: flex;
            justify-content: center;
            gap: 40px;
            margin-top: 50px;
        }


        .button {
            padding: 15px 50px;
            font-size: 1.2em;
            font-weight: 600;
            border-radius: 50px;
            border: none;
            color: white;
            cursor: pointer;
            transition: transform 0.3s ease, box-shadow 0.3s ease;
            background: linear-gradient(145deg, #333333, #1d1d1d);
            box-shadow: 0 10px 25px rgba(0, 0, 0, 0.4);
        }

        .btn-danger { 
            background: linear-gradient(145deg, #b91d1d, #7e0c0c); 
        }

        
        .button:hover {
            transform: translateY(-5px);
            box-shadow: 0 12px 24px rgba(0, 0, 0, 0.5);
        }

       
        .footer {
            text-align: center;
            margin-top: 80px;
            font-size: 0.9em;
            color: #aaaaaa;
            background-color: rgba(0, 0, 0, 0.7);
            padding: 20px 0;
        }

       
        .modal {
            display: none;
            position: fixed;
            z-index: 1;
            left: 0;
            top: 0;
            width: 100%;
            height: 100%;
            background-color: rgba(0, 0, 0, 0.85);
            transition: opacity 0.3s ease;
        }

        .modal-content {
            background-color: #222;
            margin: 10% auto;
            padding: 30px;
            border-radius: 20px;
            width: 40%;
            box-shadow: 0 6px 12px rgba(0, 0, 0, 0.5);
            text-align: center;
            transform: scale(0.7);
            transition: all 0.4s ease;
        }

        .modal.open .modal-content {
            transform: scale(1);
        }

        .close-btn {
            float: right;
            font-size: 1.5em;
            cursor: pointer;
            color: #ffffff;
        }

        /* Modal form styling */
        form {
            display: flex;
            flex-direction: column;
            align-items: center;
            gap: 20px;
        }

        input[type="text"], input[type="number"] {
            width: 80%;
            padding: 12px;
            border: 1px solid #888;
            border-radius: 10px;
            font-size: 1em;
            background-color: #444;
            color: white;
        }

        input[type="submit"] {
            padding: 12px 40px;
            font-size: 1.1em;
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
    </style>

    <script>

        function showModal() {
            const modal = document.getElementById("addItemModal");
            modal.style.display = "block";
            modal.classList.add("open");
        }

        function closeModal() {
            const modal = document.getElementById("addItemModal");
            modal.style.display = "none";
            modal.classList.remove("open");
        }


        function confirmCancel() {
            return confirm("Are you sure you want to cancel your order?");
        }
    </script>
</head>
<body>


    <div class="container">
        <h1>Shopping Cart</h1>
        <p class="subtitle">Manage your cart items with ease</p>


        <div class="button-container">

            <button class="button" onclick="showModal()">Add New Item</button>


            <a href="DeleteOrder.jsp" onclick="return confirmCancel();">
                <button class="button btn-danger">Cancel an Order</button>
            </a>
        </div>
    </div>


    <div id="addItemModal" class="modal">
        <div class="modal-content">
            <span class="close-btn" onclick="closeModal()">&times;</span>
            <h2>Add a New Item</h2>
            <p>Enter details to add a new item to your shopping cart.</p>
            <form action="OrderInsert.jsp" method="post">
                <input type="text" id="item-name" name="itemName" placeholder="Item Name" required>
                <input type="number" id="item-qty" name="itemQty" placeholder="Quantity" min="1" required>
                <input type="submit" value="Add Item">
            </form>
        </div>
    </div>

    <!-- Footer -->
    <div class="footer">
        &copy; 2024 Online Store. All rights reserved.
    </div>

</body>
</html>

