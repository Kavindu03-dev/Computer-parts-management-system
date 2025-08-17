<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login</title>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/loginStyles.css">
<link rel="stylesheet" href="styleshome.css">
<style>
    body {
        background-image: url('Images/background.jpg');
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
        background-color: rgba(255, 255, 255, 0.1);
        width: 360px;
        padding: 30px;
        border-radius: 14px;
        box-shadow: 0 4px 8px rgba(0, 0, 0, 0.6); 
        text-align: center;
    }

    label {
        display: block;
        margin-bottom: 5px;
        font-weight: bold;
        color: white; 
    }

    input[type="text"],
    input[type="password"] {
        width: calc(100% - 20px);
        text-align: center;
        border: 1px solid #fff;
        padding: 10px;
        background-color: rgba(255, 255, 255, 0.2); 
        color: white; 
        border-radius: 14px;
        font-size: 16px;
        margin: 10px 0;
    }

    input::placeholder {
        color: #ccc;
    }

    button {
        background-color: rgba(255, 255, 255, 0.2);
        color: white;
        border: 1px solid white; 
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

    button:hover {
        background-color: rgba(255, 255, 255, 0.4); 
    }

    .view-profile-btn {
        background-color: #2196F3; 
        color: white;
        border: none;
        padding: 12px;
        border-radius: 14px;
        cursor: pointer;
        width: 100%;
        font-size: 16px;
        display: flex;
        justify-content: center;
        align-items: center;
    }

    .view-profile-btn:hover {
        background-color: #1e7ec8; 
    }

    .view-profile-btn i {
        margin-right: 8px; 
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

    /* Styles for the small button */
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
</style>
</head>
<body>
    <div class="container">
        <form action="loginServlet" method="POST">
            <label for="username">User-name:</label>
            <input type="text" id="username" name="uid" required spellcheck="false" placeholder="Enter your username"><br><br>

            <label for="password">Password:</label>
            <input type="password" id="password" name="pass" required placeholder="Enter your password"><br><br>

            <button type="submit" name="action" value="useraccount" class="view-profile-btn">
                <i class="fas fa-user"></i> View Profile
            </button>
        </form>

        <!-- Small button added here -->
       
    </div>
  <button class="small-button" onclick="window.location.href='Home.jsp';">Go to Home</button>
    <p class="register-link">
        Don't have an account? 
        <a href="Insert.jsp">Create one here</a>
    </p>
</body>
</html>
