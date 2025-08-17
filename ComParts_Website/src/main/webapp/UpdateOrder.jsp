<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Update Order</title>
<style>
    body {
        font-family: Arial, sans-serif;
        color: #f5f5f5; 
        margin: 0;
        padding: 0;
        position: relative; 
        min-height: 100vh; 
        background-color: #000; 
    }


    .background {
        position: absolute;
        top: 0;
        left: 0;
        width: 100%;
        height: 100%;
        background-image: url('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSgQZ1PKWnSCEdYtkIrDo9oVXK37x8lX3hOsw&s'); 
        background-size: cover;
        background-position: center;
        filter: blur(10px); 
        z-index: -1;
    }

    h2 {
        text-align: center;
        color: #f5f5f5; 
        margin-top: 20px;
        position: relative;
        z-index: 1;
    }

    form {
        width: 400px;
        margin: 20px auto;
        padding: 20px;
        background-color: #333; 
        border-radius: 8px;
        box-shadow: 0 4px 8px rgba(255, 255, 255, 0.1); 
        position: relative;
        z-index: 1;
    }

    label {
        display: block;
        margin-bottom: 8px;
        color: #f5f5f5; 
    }

    input[type="text"], input[type="number"] {
        width: calc(100% - 20px);
        padding: 10px;
        margin-bottom: 15px;
        border: 1px solid #555; 
        border-radius: 5px;
        background-color: #444; 
        color: #f5f5f5;
        font-size: 16px;
    }

    input[type="submit"] {
        width: 100%;
        padding: 12px;
        background-color: #555; 
        color: white;
        border: none;
        border-radius: 5px;
        cursor: pointer;
        font-size: 16px;
        transition: background-color 0.3s;
    }

    input[type="submit"]:hover {
        background-color: #777; 
    }
</style>
</head>
<body>

<%

    String order_id = request.getParameter("order_id");
    String name = request.getParameter("name");
    String product = request.getParameter("product");
    String product_id = request.getParameter("product_id");
    String price = request.getParameter("price");
    String address = request.getParameter("address");
    String quantity = request.getParameter("quantity");
%>  


    <div class="background"></div>

    <h2>Update Order</h2>


    <form action="UpdateOrderServlet" method="post"><br>
        ID: <input type="number" name="order_id" value="<%= (order_id != null ? order_id : "") %>" readonly><br>
        Name: <input type="text" name="name" value="<%= (name != null ? name : "") %>"><br>
        Product: <input type="text" name="product" value="<%= (product != null ? product : "") %>"><br>
        Product ID: <input type="text" name="product_id" value="<%= (product_id != null ? product_id : "") %>"><br>
        Price: <input type="text" name="price" value="<%= (price != null ? price : "") %>"><br>
        Address: <input type="text" name="address" value="<%= (address != null ? address : "") %>"><br>
        Quantity: <input type="text" name="quantity" value="<%= (quantity != null ? quantity : "") %>"><br>
        
        <input type="submit" name="submit" value="Update order details">
    </form>

</body>
</html>

