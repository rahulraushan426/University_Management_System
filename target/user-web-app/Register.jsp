<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Register - Galgotias University</title>
    <link rel="stylesheet" href="style.css">
</head>
<body>
    <header>
        <h1>Register for Galgotias University</h1>
    </header>

    <section class="form-container">
        <form action="UserServlet" method="POST">
            <input type="hidden" name="action" value="register">
            <div class="form-group">
                <label for="name">Name</label>
                <input type="text" id="name" name="name" required>
            </div>
            <div class="form-group">
                <label for="rollno">Roll Number</label>
                <input type="number" id="rollno" name="rollno" required>
            </div>
            <div class="form-group">
                <label for="email">Email</label>
                <input type="email" id="email" name="email" required>
            </div>
            <div class="form-group">
                <label for="password">Password</label>
                <input type="password" id="password" name="password" required>
            </div>
            <button type="submit">Register</button>
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
