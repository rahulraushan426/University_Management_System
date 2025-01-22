<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>User Profile - Galgotias University</title>
    <link rel="stylesheet" href="style.css">
</head>
<body>
    <header>
        <h1>User Profile - Galgotias University</h1>
    </header>

    <section class="profile-container">
        <c:if test="${not empty sessionScope.user}">
            <h2>Welcome, ${sessionScope.user.name}</h2>
            <p><strong>Email:</strong> ${sessionScope.user.email}</p>
            <p><strong>Roll Number:</strong> ${sessionScope.user.rollNo}</p>
            <a href="UserServlet?action=logout">Logout</a>
        </c:if>
        <c:if test="${empty sessionScope.user}">
            <p>You must <a href="Login.jsp">login</a> to view your profile.</p>
        </c:if>
    </section>

    <footer>
        <p>&copy; 2024 Galgotias University. All rights reserved.</p>
    </footer>
</body>
</html>
