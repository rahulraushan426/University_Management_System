<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.user.model.User" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Galgotias University</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            line-height: 1.6;
            margin: 0;
        }
        header {
            background: url('https://observervoice.com/wp-content/uploads/2024/07/Two-Day-quotInnovation-and-Entrepreneurship-Training-and-Exposurequot-Inaugurated-at-Galgotias.png') no-repeat center center;
            background-size: cover;
            height: 180px;
            max-height: 60vh;
            display: flex;
            justify-content: flex-end;
            align-items: center;
            padding-right: 20px;
            position: relative;
        }
        nav {
            background-color: #555;
            color: #fff;
            padding: 10px 20px;
            display: flex;
            justify-content: center;
            align-items: center;
            width: 100%;
        }
        nav ul {
            list-style: none;
            display: flex;
            margin: 0;
            padding: 0;
            width: 100%;
            justify-content: space-evenly;
        }
        nav ul li {
            flex-grow: 1;
            text-align: center;
        }
        nav ul li a {
            color: white;
            text-decoration: none;
            padding: 10px;
            font-size: 14px;
            display: block;
            width: 100%;
            cursor: pointer;
        }
        nav ul li a:hover {
            text-decoration: underline;
        }
        .hero, .main-content, .notifications {
            text-align: center;
            padding: 50px 20px;
        }
        .hero {
            background-color: #f4f4f4;
        }
        .notifications {
            display: none;
        }
        .back-to-home {
            display: none;
            text-align: center;
            margin-top: 20px;
        }
        footer {
            background: #333;
            color: white;
            text-align: center;
            padding: 20px;
            margin-top: 20px;
        }
        .about-columns {
            display: flex;
            flex-wrap: wrap;
            justify-content: center;
            gap: 30px;
        }
        .about-column {
            flex: 1 1 300px;
            max-width: 400px;
            text-align: left;
        }
    </style>
    <script>
        function showNotifications() {
            document.querySelector(".hero").style.display = "none";
            document.querySelector(".main-content").style.display = "none";
            document.querySelector(".notifications").style.display = "block";
            document.querySelector(".back-to-home").style.display = "block";
        }
        function showHome() {
            document.querySelector(".hero").style.display = "block";
            document.querySelector(".main-content").style.display = "block";
            document.querySelector(".notifications").style.display = "none";
            document.querySelector(".back-to-home").style.display = "none";
        }
    </script>
</head>
<body>
    <header></header>
    <nav>
        <ul>
            <li><a href="#" onclick="showHome()">Home</a></li>       
            <li><a href="infrastructure.jsp">Infrastructure/Facilities</a></li> <!-- Updated -->
            <li><a href="#about-footer">About Us</a></li> <!-- Updated -->
            <% User user = (User) session.getAttribute("user");
               if (user != null) { %>
                <li><a href="FeeServlet">Fee Details</a></li> <!-- Changed from fee.jsp to FeeServlet -->
                <li><a href="calender.jsp">Calender</a></li> <!-- Updated -->
                <li><a href="notifications.jsp">Notifications</a></li>
                <li><a href="UserServlet?action=profile">Profile</a></li>
                <li><a href="UserServlet?action=logout">Logout</a></li>
            <% } else { %>
                <li><a href="Login.jsp">Login</a></li>
                <li><a href="Register.jsp">Register</a></li>
            <% } %>
        </ul>
    </nav>

    <div class="hero">
        <h1>Welcome to Galgotias University</h1>
        <p>Excellence in Education</p>
    </div>

    <footer id="about-footer">
        <h2>About Us</h2>
        <div class="about-columns">
            <div class="about-column">
                <h3>SCHOOLS</h3>
                <p>School of Computer Science & Engineering, School of Business, School of Law, School of Design, and many more.</p>
            </div>
            <div class="about-column">
                <h3>QUICK LINKS</h3>
                <p>Examination, Student Login, Digital Learning, National Academic Depository, Library, Sports, and more.</p>
            </div>
            <div class="about-column">
                <h3>REACH US</h3>
                <p>📞 0120-4370000, +91 9582847072<br>Email: admission@galgotiasuniversity.edu.in</p>
            </div>
            <div class="about-column">
                <h3>LOCATE US</h3>
                <p>Plot No.2, Sector 17-A Yamuna Expressway, Greater Noida, Uttar Pradesh 203201</p>
            </div>
        </div>
    </footer>
</body>
</html>
