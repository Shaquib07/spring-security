<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<!DOCTYPE html>
<html>
<head>
    <title>Admin Page</title>
    <style>
        body { font-family: Arial, sans-serif; margin: 40px; }
        .container { max-width: 600px; margin: auto; }
        .admin-box { background: #ffebee; padding: 20px; border-radius: 5px; border-left: 5px solid #f44336; }
        .nav { margin: 20px 0; }
        .nav a { margin: 0 10px; text-decoration: none; color: #f44336; }
        .nav a:hover { text-decoration: underline; }
    </style>
</head>
<body>
    <div class="container">
        <div class="nav">
            <a href="/logout">Logout</a>
        </div>

        <div class="admin-box">
            <h1>Admin Page</h1>
            <p><strong>Username:</strong> ${username}</p>
            <p><strong>Role:</strong> ${role}</p>
            <p>You have ADMIN access. This page is only accessible to users with ADMIN role.</p>
        </div>
    </div>
</body>
</html>