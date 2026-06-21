<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<!DOCTYPE html>
<html>
<head>
    <title>User Page</title>
    <style>
        body { font-family: Arial, sans-serif; margin: 40px; }
        .container { max-width: 600px; margin: auto; }
        .user-box { background: #e3f2fd; padding: 20px; border-radius: 5px; border-left: 5px solid #2196F3; }
        .nav { margin: 20px 0; }
        .nav a { margin: 0 10px; text-decoration: none; color: #2196F3; }
        .nav a:hover { text-decoration: underline; }
    </style>
</head>
<body>
    <div class="container">
        <div class="nav">
            <a href="/logout">Logout</a>
        </div>

        <div class="user-box">
            <h1>User Page</h1>
            <p><strong>Username:</strong> ${username}</p>
            <p><strong>Role:</strong> ${role}</p>
            <p>You have USER access. This page is accessible to all authenticated users.</p>
        </div>
    </div>
</body>
</html>