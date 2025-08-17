<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Order Details</title>
    <style>
        body {
            font-family: 'Poppins', sans-serif;
            margin: 0;
            padding: 0;
            position: relative; 
            color: #fff; 
            min-height: 100vh; 
        }

        
        .background {
            position: absolute;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            background-image: url('data:image/jpeg;base64,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'); 
            background-size: cover;
            background-position: center;
            filter: blur(10px); 
            z-index: -1; 
        }

        h2 {
            text-align: center;
            margin-bottom: 20px;
            color: #fff;
            position: relative;
            z-index: 1;
        }

        table {
            width: 80%;
            margin: 20px auto;
            border-collapse: collapse;
            background-color: rgba(34, 34, 34, 0.9); 
            position: relative;
            z-index: 1;
        }

        table, th, td {
            border: 1px solid #fff; 
            padding: 10px;
            text-align: center;
        }

        th {
            background-color: #444; 
            color: #fff;
        }

        tr:nth-child(even) {
            background-color: #333; 
        }

        tr:hover {
            background-color: #555; 
        }

        input[type="button"] {
            display: block;
            margin: 20px auto;
            padding: 10px 20px;
            background-color: #4CAF50; 
            color: white;
            border: none;
            cursor: pointer;
            border-radius: 5px;
            font-size: 1em;
            transition: background-color 0.3s;
        }

        input[type="button"]:hover {
            background-color: #45a049; 
        }

        /* Footer styling */
        .footer {
            text-align: center;
            margin-top: 20px;
            color: #aaa;
            position: relative;
            z-index: 1;
        }
    </style>
</head>
<body>


    <div class="background"></div>

    <h2>Order Details</h2>

    <table>
        <tr>
            <th>Order ID</th>
            <th>Name</th>
            <th>Product</th>
            <th>Product ID</th>
            <th>Price</th>
            <th>Address</th>
            <th>Quantity</th>
            <th>Action</th>
        </tr>

        <c:forEach var="Details" items="${OrdDetails}">
            <tr>
                <td>${Details.order_id}</td>
                <td>${Details.name}</td>
                <td>${Details.product}</td>
                <td>${Details.product_id}</td>
                <td>${Details.price}</td>
                <td>${Details.address}</td>
                <td>${Details.quantity}</td>
                <td>

                    <c:url value="UpdateOrder.jsp" var="OrderUpdate">
                        <c:param name="order_id" value="${Details.order_id}"/>
                        <c:param name="name" value="${Details.name}"/>
                        <c:param name="product" value="${Details.product}"/>
                        <c:param name="product_id" value="${Details.product_id}"/>
                        <c:param name="price" value="${Details.price}"/>
                        <c:param name="address" value="${Details.address}"/>
                        <c:param name="quantity" value="${Details.quantity}"/>
                    </c:url>
                    
                    
                    <a href="${OrderUpdate}">
                        <input type="button" name="update" value="Update my data">
                    </a>
                </td>
            </tr>
        </c:forEach>
    </table>

    <div class="footer">
        &copy; 2024 Online Store. All rights reserved.
    </div>

</body>
</html>


