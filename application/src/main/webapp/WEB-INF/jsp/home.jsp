<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<!DOCTYPE html>
<html>
<head>
    <title>Home</title>
    <style>
        body { font-family: Arial, sans-serif; margin: 40px; }
        .container { max-width: 600px; margin: auto; text-align: center; }
        .btn { padding: 10px 20px; margin: 10px; text-decoration: none; color: white; }
        .btn-user { background-color: #2196F3; }
        .btn-admin { background-color: #f44336; }
        .btn-logout { background-color: #555; }
        .login-form { background: #f4f4f4; padding: 20px; border-radius: 5px; margin: 20px 0; }
        .form-group { margin: 15px 0; }
        input[type="text"], input[type="password"] {
            padding: 8px; width: 200px; border: 1px solid #ddd; border-radius: 4px;
        }
        .submit-btn { background: #4CAF50; color: white; padding: 10px 20px; border: none; border-radius: 4px; cursor: pointer; }
    </style>
</head>
<body>
    <div class="container">
        <h1>Spring Security Demo</h1>

        <c:if test="${pageContext.request.userPrincipal.name != null}">
            <h3>Welcome, ${pageContext.request.userPrincipal.name}!</h3>
            <div>
                <a href="/user" class="btn btn-user">User Page</a>
                <a href="/admin" class="btn btn-admin">Admin Page</a>
                <a href="/logout" class="btn btn-logout">Logout</a>
            </div>
        </c:if>

        <c:if test="${pageContext.request.userPrincipal.name == null}">
            <c:if test="${param.error != null}">
                <p style="color:red;">Invalid username or password.</p>
            </c:if>
            <c:if test="${param.logout != null}">
                <p style="color:green;">You have been logged out.</p>
            </c:if>
            <div class="login-form">
                <h2>Login</h2>
                <form action="/login" method="post">
                    <div class="form-group">
                        <input type="text" name="username" placeholder="Username" required>
                    </div>
                    <div class="form-group">
                        <input type="password" name="password" placeholder="Password" required>
                    </div>
                    <button type="submit" class="submit-btn">Login</button>
                </form>
                <p style="margin-top: 20px; color: #666;">
                    <strong>Test Credentials:</strong><br>
                    Admin: admin / admin123<br>
                    User: user / user123
                </p>
            </div>
        </c:if>
    </div>
</body>
</html>