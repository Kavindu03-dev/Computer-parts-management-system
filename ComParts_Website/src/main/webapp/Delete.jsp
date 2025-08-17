<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Delete Account</title>
    <style>
        body {
            background-image: url('Images/image5.jpg'); 
            font-family: Arial, sans-serif;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            background-size: cover;
            background-position: center;
            flex-direction: column;
            margin: 0;
            padding: 0;
        }

        h1 {
            color: white;
            text-align: center;
            margin-bottom: 20px;
        }

        .container {
            background-color: rgba(255, 255, 255, 0.1); 
            padding: 30px;
            border-radius: 14px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.6); 
            text-align: center;
            max-width: 400px;
            width: 100%;
            color: white;
        }

        label {
            display: block;
            margin-bottom: 5px;
            font-weight: bold;
            color: white; 
        }

        input[type="text"] {
            width: calc(100% - 20px);
            padding: 12px;
            margin: 10px 0;
            border: 1px solid rgba(255, 255, 255, 0.3);
            border-radius: 14px;
            background-color: rgba(255, 255, 255, 0.2);
            color: white; 
            box-sizing: border-box;
            text-align: center;
        }

        input[type="submit"] {
            background-color: #f44336; 
            color: white;
            padding: 15px;
            border: none;
            border-radius: 12px;
            font-size: 16px;
            margin: 10px 0;
            cursor: pointer;
            width: 100%;
            transition: background-color 0.3s;
        }

        input[type="submit"]:hover {
            background-color: #d32f2f; 
        }

        .register-link {
            margin-top: 20px;
            font-size: 14px;
            color: white; 
            text-align: center;
        }

        .register-link a {
            text-decoration: none;
            color: #2196F3; 
            font-weight: bold;
        }

        .register-link a:hover {
            text-decoration: underline; 
        }

    </style>
</head>
<body>

<%
    String id = request.getParameter("id");
    String name = request.getParameter("name");
    String email = request.getParameter("email");
    String password = request.getParameter("password");
    String username = request.getParameter("username");
%>

<div class="container">
    <h1>Want to delete this account?</h1>
    <form action="DeleteServelett" method="post">
        <label for="id">ID</label>
        <input type="text" id="id" name="cus.id" value="<%=id%>" readonly><br>

        <label for="name">Name</label>
        <input type="text" id="name" name="name" value="<%=name%>" readonly><br>

        <label for="email">Email</label>
        <input type="text" id="email" name="email" value="<%=email%>" readonly><br>

        <label for="username">User Name</label>
        <input type="text" id="username" name="username" value="<%=username%>" readonly><br>

        <input type="submit" name="submit" value="Delete Account">
    </form>
</div>

 <button onclick="window.history.back();" style="padding: 12px 25px; font-size: 16px; color: white; background-color: #616A6B; border: 2px solid #424949; border-radius: 5px; cursor: pointer; transition: background-color 0.3s, color 0.3s;">
    Cancel
</button>
</body>
</html>
