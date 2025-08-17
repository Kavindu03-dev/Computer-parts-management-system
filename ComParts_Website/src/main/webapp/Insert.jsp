<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Register</title>

<style>
    body {
       /* Black background */ background-image: url('Images/image 3.jpg');* Black background */
        font-family: Arial, sans-serif;
        margin: 0;
        padding: 0;
        display: flex;
        justify-content: center;
        align-items: center;
        height: 100vh;
        background-size: cover;
        background-position: center;
        flex-direction: column;
    }

    .container {
        background-color: rgba(255, 255, 255, 0.1); /* White with transparency */
        width: 360px;
        padding: 30px;
        border-radius: 14px;
        box-shadow: 0 4px 8px rgba(0, 0, 0, 0.6); /* Darker shadow for better visibility */
        text-align: center;
    }

    label {
        display: block;
        margin-bottom: 5px;
        font-weight: bold;
        color: white; /* White text */
    }

    input[type="text"],
    input[type="email"],
    input[type="password"] {
        width: calc(100% - 20px);
        text-align: center;
        border: 1px solid #fff; /* White border */
        padding: 10px;
        background-color: rgba(255, 255, 255, 0.2); /* Transparent white background for inputs */
        color: white; /* White text for inputs */
        border-radius: 14px;
        font-size: 16px;
        margin: 10px 0;
    }

    input::placeholder {
        color: #ccc; /* Light grey placeholder text */
    }

    input[type="submit"] {
        background-color: rgba(255, 255, 255, 0.2); /* Transparent white background */
        color: white; /* White text */
        border: 1px solid white; /* White border */
        padding: 10px;
        text-align: center;
        display: inline-block;
        font-size: 16px;
        margin: 10px 0;
        cursor: pointer;
        border-radius: 12px;
        transition: background-color 0.3s;
        width: 100%;
    }

    input[type="submit"]:hover {
        background-color: rgba(255, 255, 255, 0.4); /* Lighter transparent white on hover */
    }
</style>
</head>
<body>

    <div class="container">
        <form action="Insert" method="POST">
            <!-- Full Name field -->
            <label for="name">Full Name:</label>
            <input type="text" id="name" name="Name" required placeholder="Enter your full name"><br><br>

            <!-- Email field -->
            <label for="email">Email:</label>
            <input type="email" id="email" name="Email" required placeholder="Enter your email"><br><br>

            <!-- Password field -->
            <label for="password">Password:</label>
            <input type="password" id="password" name="Password" required placeholder="Enter your password"><br><br>

            <!-- Username field -->
            <label for="username">Username:</label>
            <input type="text" id="username" name="Username" required placeholder="Enter your username"><br><br>

            <!-- Submit button -->
            <input type="submit" value="Submit">
        </form>
    </div>

</body>
</html>
