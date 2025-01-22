<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.user.model.User" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Galgotias University</title>
    <style>
        /* CSS Styles (same as provided above) */
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            line-height: 1.6;
        }

        header {
            background: url('https://observervoice.com/wp-content/uploads/2024/07/Two-Day-quotInnovation-and-Entrepreneurship-Training-and-Exposurequot-Inaugurated-at-Galgotias.png') no-repeat center center;
            background-size: cover;
            height: 180px;
            display: flex;
            justify-content: flex-end;
            align-items: center;
            padding-right: 20px;
        }

        nav {
            background-color: #444;
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
        }

        nav ul li a:hover {
            background-color: #555;
            border-radius: 5px;
        }

        .hero {
            background: url('https://gulms.galgotiasuniversity.org/pluginfile.php/1/theme_academi/slide1image/1737437233/WhatsApp%20Image%202024-08-17%20at%2012.59.38%20PM.jpeg') no-repeat center center;
            background-size: cover;
            height: 400px;
            text-align: center;
        }

        .info-section {
            display: flex;
            align-items: center;
            justify-content: center;
            padding: 50px 20px;
        }

        .info-image {
            flex: 1;
            background: url('https://galgotiasonline.edu.in/images/Aboutus.webp') no-repeat center center;
            background-size: cover;
            height: 300px;
        }

        .info-text {
            flex: 1;
            padding: 20px;
        }

        .second-info-section {
            display: flex;
            align-items: center;
            justify-content: space-between;
            padding: 50px 20px;
        }

        .second-info-text {
            flex: 1;
            padding: 20px;
        }

        .second-info-images {
            flex: 1;
            display: flex;
            flex-direction: column;
            gap: 20px;
        }

        .second-info-images img {
            width: 100%;
            height: auto;
            border-radius: 5px;
            transition: transform 0.3s ease-in-out;
        }

        .second-info-images img:hover {
            transform: scale(1.05);
        }

        footer {
            background-color: #222;
            color: white;
            text-align: center;
            padding: 40px 20px;
            font-size: 14px;
        }

        footer h2 {
            font-size: 24px;
            margin-bottom: 30px;
        }

        .about-us-info {
            max-width: 1200px;
            margin: 0 auto;
            padding: 20px;
            background-color: #333;
            border-radius: 8px;
        }

        .about-us-info h3 {
            margin-top: 20px;
            font-size: 20px;
            color: #FFD700;
            text-decoration: underline;
        }

        .schools-list, .locate-us, .reach-us {
            margin-top: 20px;
            list-style: none;
            padding: 0;
        }

        .schools-list li, .reach-us li, .locate-us li {
            padding: 8px 0;
            font-size: 16px;
            color: #ddd;
            line-height: 1.6;
        }

        .schools-list li:hover, .reach-us li:hover, .locate-us li:hover {
            background-color: #444;
            cursor: pointer;
        }

        .schools-list li {
            display: inline-block;
            width: 100%;
            max-width: 300px;
        }

        .schools-list {
            display: flex;
            flex-wrap: wrap;
            justify-content: center;
            gap: 10px;
        }

        .schools-list li, .reach-us li, .locate-us li {
            width: 100%;
            text-align: left;
        }

        button {
            background-color: #444;
            color: white;
            border: none;
            padding: 8px 16px;
            cursor: pointer;
            font-size: 16px;
            border-radius: 5px;
            margin-top: 20px;
        }

        button:hover {
            background-color: #555;
        }

        .hidden {
            display: none;
        }

        @media (max-width: 768px) {
            .second-info-section {
                flex-direction: column;
                text-align: center;
            }

            .second-info-text, .second-info-images {
                flex: 1 1 100%;
            }

            .schools-list li {
                width: 100%;
                max-width: none;
            }
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

    <div class="hero"></div>
    
    <div class="info-section">
        <div class="info-image"></div>
        <div class="info-text">
            <h2>Galgotias University</h2>
            <p>Galgotias University (GU) is a private university located in Greater Noida, Uttar Pradesh, India. It was established in 2011 and is recognized by the University Grants Commission (UGC). The university is known for its academic excellence, modern infrastructure, and industry-focused curriculum.</p>
            <h3>Key Features of Galgotias University:</h3>
            <ul>
                <li><strong>Academic Programs:</strong> Offers undergraduate, postgraduate, and doctoral programs in various fields.</li>
                <li><strong>Infrastructure:</strong> Modern classrooms, laboratories, libraries, hostels, and sports facilities.</li>
                <li><strong>Placements:</strong> Strong placement record with top recruiters like Infosys, TCS, Wipro.</li>
                <li><strong>Accreditations & Recognitions:</strong> Approved by UGC, AICTE, PCI, BCI.</li>
                <li><strong>Student Life:</strong> Cultural and technical fests, clubs, sports, and innovation programs.</li>
                <li><strong>International Collaborations:</strong> Partnerships with global universities for research and exchange programs.</li>
            </ul>
        </div>
    </div>
    
    <div class="second-info-section">
        <div class="second-info-text">
            
            <h2>Modern Classrooms and Labs</h2>
            <p>The university has smart classrooms equipped with multimedia tools and spacious lecture halls. Specialized laboratories for engineering, management, law, and other disciplines allow students to conduct practical experiments and projects.</p>
            
            <h2>Libraries</h2>
            <p>The university library is stocked with an extensive collection of books, journals, and e-resources to support students in their research and studies.</p>
            
            <h2>Hostels</h2>
            <p>Separate hostels for male and female students with modern amenities such as Wi-Fi, mess facilities, and recreational areas.</p>
            
            <h2>Sports and Recreation</h2>
            <p>The campus includes sports complexes with facilities for basketball, football, cricket, badminton, and more. Students are encouraged to participate in both recreational and competitive sports.</p>
            
            <h2>Cafeteria and Food Courts</h2>
            <p>Multiple dining options offering a variety of cuisines to cater to the diverse tastes of students and staff.</p>
            
            <h2>Wi-Fi and IT Infrastructure</h2>
            <p>High-speed internet and Wi-Fi are available across the campus, ensuring that students have easy access to online resources and research material.</p>
            
            <h2>Research and Innovation</h2>
            <p>Galgotias University emphasizes research and innovation by providing students and faculty members with ample opportunities to explore new ideas and advance knowledge. The university has state-of-the-art research facilities and collaborations with industries and academic institutions globally.</p>
        </div>
        <div class="second-info-images">
            <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR_hR3pyZ53NYkJqjzx6z4Aqyjpyv8wHHkEQA&s" alt="Classroom">
            <img src="https://indiaeducationdiary.in/wp-content/uploads/2024/01/Galgotias-Uni-Pic-1-.jpg" alt="University Campus">
        </div>
    </div>
    
    <footer id="about-footer">
        <div class="about-us-info">
            <h2>About Us</h2>
            <p>Galgotias University is committed to providing quality education and fostering innovation, making it one of the reputed private universities in India.</p>
            
            <h3>SCHOOLS</h3>
            <ul class="schools-list">
                <li>School of Computer Science & Engineering</li>
                <li>School of Computer Applications & Technology</li>
                <li>School of Business</li>
                <li>School of Engineering</li>
                <li>School of Law</li>
                <li>School of Liberal Education</li>
                <li>School of Media & Communication Studies</li>
                <li>School of Hospitality & Tourism</li>
                <li>School of Biological & Life Sciences</li>
                <li>School of Biomedical Sciences</li>
                <li>School of Basic Sciences</li>
                <li>School of Commerce</li>
                <li>School of Agriculture</li>
                <li>School of Allied Health Sciences</li>
                <li>School of Medical and Allied Sciences</li>
                <li>School of Nursing</li>
                <li>School of Education</li>
                <li>School of Design</li>
                <li>Galgotias Polytechnic</li>
                <li>School of Vocational Education</li>
                <li>School of Languages</li>
                <li>School of Biosciences and Technology</li>
                <li>School of Life Long Learning</li>
                <li>Online Courses</li>
            </ul>

            <h3>LOCATE US</h3>
            <ul class="locate-us">
                <li>Plot No.2, Sector 17-A Yamuna Expressway, Opposite Buddha International Circuit, Greater Noida, Gautam Buddh Nagar, Uttar Pradesh 203201</li>
            </ul>

            <h3>REACH US</h3>
            <ul class="reach-us">
                <li>0120-4370000</li>
                <li>+91 9582847072</li>
                <li>admission@galgotiasuniversity.edu.in</li>
                <li>registrar@galgotiasuniversity.edu.in</li>
                <li>vcoffice@galgotiasuniversity.edu.in</li>
            </ul>
        </div>
    </footer>
</body>
</html>