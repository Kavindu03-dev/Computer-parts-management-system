<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>User Account Dashboard</title>
    <style>
        /* Dashboard styling */
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            display: flex;
            flex-direction: column;
            height: 100vh;
            position: relative;
        }

        body::before {
            content: ''; 
            background-image: url('Images/image4.jpg'); 
            filter: blur(5px); 
            position: absolute; 
            top: 0;
            left: 0;
            right: 0;
            bottom: 0;
            z-index: -1; 
            background-size: cover;
            background-position: center;
        }

        header, footer {
            background-color: rgba(0, 0, 0, 0.7);
            color: white;
            text-align: center;
            padding: 15px;
            position: relative;
        }
        
          .small-button {
        background-color:#d50000;
        color: white;
        border: none;
        padding: 8px 8px;
        text-align: center;
        text-decoration: none;
        font-size: 14px;
        margin: 5px;
        cursor: pointer;
        border-radius: 10px;
        width:150px;
    }
    

    .small-button:hover {
        background-color: #45a049;
    }
        
        
        
        

        .container {
            display: flex;
            flex: 1;
        }

        .sidebar {
            width: 250px;
            background-color: rgba(255, 255, 255, 0.2);
            padding: 20px;
            box-shadow: 2px 0 5px rgba(0, 0, 0, 0.5);
            border-radius: 10px 0 0 10px;
            height: 100%;
        }

        .content {
            flex: 1;
            padding: 20px;
            display: flex;
            flex-direction: column;
            align-items: center;
        }

        h2 {
            color: white;
            text-align: center;
            margin-bottom: 20px;
        }

        table {
            width: 100%;
            max-width: 800px;
            margin: 0 auto;
            border-collapse: collapse;
            background-color: rgba(255, 255, 255, 0.1);
            border-radius: 10px;
            overflow: hidden;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.6);
            text-align: center;
        }

        th, td {
            padding: 12px 15px;
            border-bottom: 1px solid rgba(255, 255, 255, 0.3);
            color: white;
        }

        th {
            background-color: rgba(255, 255, 255, 0.2);
            font-weight: bold;
        }

        tr:hover {
            background-color: rgba(255, 255, 255, 0.2);
        }

        
        input[type="button"], button {
            padding: 12px 25px;
            font-size: 16px;
            color: white;
            background-color: #4CAF50; 
            border: 2px solid #4CAF50; 
            border-radius: 5px; 
            cursor: pointer;
            transition: background-color 0.3s, color 0.3s; 
        }

        input[type="button"]:hover, button:hover {
            background-color: white; 
            color: #4CAF50; 
        }

        .buttons {
            display: flex;
            justify-content: space-around;
            margin-top: 20px;
            width: 100%;
            max-width: 600px;
        }

      
        .promotion {
            background-color: rgba(255, 255, 255, 0.2);
            padding: 15px;
            margin-top: 20px;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.5);
        }

        /* Link styles */
        .promotion a {
            color: white;
            text-decoration: none;
            display: block;
            margin: 10px 0;
        }

        .promotion a:hover {
            text-decoration: underline;
        }
    </style>
</head>
<body>

    <header>
        <h1>User Account Dashboard</h1>
    </header>

    <div class="container">
        <!-- Sidebar for promotions -->
        <div class="sidebar">
            <h3>Special Promotions</h3>
            <div class="promotion">
                <h4>Discounts</h4>
                <a href="discounts.html">View Discounts</a>
                <p>20% off on your next purchase!</p>
                
                <h4>Warranty Claims</h4>
                <a href="warranty.html">Claim Warranty</a>
                <p>Free shipping on warranty claims.</p>
                
                <p>Buy one, get one free on selected items!</p>
            </div>
        </div>

        <!-- Main content area -->
        <div class="content">
            <h2>Account Details</h2>

            <!-- Customer details table -->
            <table>
                <tr>
                    <th>ID</th>
                    <th>Name</th>
                    <th>Email</th>
                    <th>Password</th>
                    <th>Username</th>
                </tr>
                <c:forEach var="cus" items="${Details}">
                    <c:set var="id" value="${cus.id}"/>
                    <c:set var="name" value="${cus.name}"/>
                    <c:set var="email" value="${cus.email}"/>
                    <c:set var="password" value="${cus.password}"/>
                    <c:set var="username" value="${cus.username}"/>

                    <tr>
                        <td>${cus.id}</td>
                        <td>${cus.name}</td>
                        <td>${cus.email}</td>
                        <td>${cus.password}</td>
                        <td>${cus.username}</td>
                    </tr>
                </c:forEach>
            </table>

            <!-- Action buttons -->
            <div class="buttons">
                <c:url value="Updatee.jsp" var="Cusupdate">
                    <c:param name="id" value="${id}"/>
                    <c:param name="name" value="${name}"/>
                    <c:param name="email" value="${email}"/>
                    <c:param name="password" value="${password}"/>
                    <c:param name="username" value="${username}"/>
                </c:url>

                <a href="${Cusupdate}">
                    <input type="button" name="Update" value="Update my profile">
                </a>

                <c:url value="Delete.jsp" var="Cusdelete">
                    <c:param name="id" value="${id}"/>
                    <c:param name="name" value="${name}"/>
                    <c:param name="email" value="${email}"/>
                    <c:param name="password" value="${password}"/>
                    <c:param name="username" value="${username}"/>
                </c:url>

                <a href="${Cusdelete}">
                    <input type="button" name="Delete" value="Delete account">
                </a>
<a href="login.jsp" style="text-decoration: none;">
        <button style="padding: 12px 25px; font-size: 16px; color: white; background-color: #4CAF50; border: 2px solid #4CAF50; border-radius: 5px; cursor: pointer; transition: background-color 0.3s, color 0.3s;">
            ← Back 
        </button>
    </a>
            </div>
        </div>
    </div>
 <button class="small-button" onclick="window.location.href='Home.jsp';">Go to Home</button>
    <footer>
        <p>Footer content will go here.</p>
    </footer>

</body>
</html>
