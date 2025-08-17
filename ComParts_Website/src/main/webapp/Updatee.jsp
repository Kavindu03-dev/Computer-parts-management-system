<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Update Account</title>
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
        }

        h1 {
            color: white;
            text-align: center;
            margin-bottom: 20px;
        }

        form {
            background-color: rgba(255, 255, 255, 0.1); /* Transparent white background */
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.6);
            max-width: 400px;
            width: 100%;
            color: white;
        }

        input[type="text"],
        input[type="password"] {
            width: 100%;
            padding: 12px;
            margin: 10px 0;
            border: 1px solid rgba(255, 255, 255, 0.3); 
            border-radius: 4px;
            background-color: rgba(255, 255, 255, 0.1); 
            color: white;
            box-sizing: border-box;
        }

        input[type="submit"] {
            background-color: #4CAF50; /* Green button */
            color: white;
            padding: 15px 30px;
            font-size: 20px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            width: 100%;
            transition: background-color 0.3s;
        }

        input[type="submit"]:hover {
            background-color: #45a049; /* Darker green on hover */
        }
    </style>
</head>

<body>

<%
      String id=request.getParameter("id");
      String name=request.getParameter("name");
      String email=request.getParameter("email");
      String password=request.getParameter("password");
      String username=request.getParameter("username");
%>




<form action="UpdateServlet" method="post">
ID<input type="text" name="cus.id" value="<%=id%>"readonly><br>
Name<input type="text" name="name" value="<%=name%>"><br>
Email<input type="text" name="email" value="<%=email%>"><br>
Password<input type="password" name="password" value="<%=password%>"><br>
UserName<input type="text" name="username" value="<%=username%>"><br>
<input type="submit" name="submit" value="Update data"><br>




</form>

   <button onclick="window.history.back();" style="padding: 12px 25px; font-size: 16px; color: white; background-color: #616A6B; border: 2px solid #424949; border-radius: 5px; cursor: pointer; transition: background-color 0.3s, color 0.3s;">
    ← Back to User Account
</button>



</body>







</html>