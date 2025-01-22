<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login - Galgotias University</title>
    <link rel="stylesheet" href="style.css">
</head>
<body>
    <header>
        <h1>Login - Galgotias University</h1>
    </header>

    <section class="form-container">
        <form action="UserServlet" method="POST">
            <input type="hidden" name="action" value="login">
            <input type="hidden" name="returnUrl" value="${param.returnUrl}">
            <div class="form-group">
                <label for="email">Email</label>
                <input type="email" id="email" name="email" required>
            </div>
            <div class="form-group">
                <label for="password">Password</label>
                <input type="password" id="password" name="password" required>
            </div>
            <button type="submit">Login</button>
        </form>

        <c:if test="${not empty param.error}">
            <div class="error-message">${param.error}</div>
        </c:if>
    </section>

    <footer>
        <p>&copy; 2024 Galgotias University. All rights reserved.</p>
    </footer>
</body>
</html>
