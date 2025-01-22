<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Infrastructure & Facilities | Galgotias University</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f4f4f4;
        }
        header {
            background: #333;
            color: white;
            padding: 20px;
            text-align: center;
            font-size: 24px;
        }
        .container {
            width: 90%;
            max-width: 1200px;
            margin: 20px auto;
            padding: 20px;
            background: white;
            box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
            border-radius: 5px;
        }
        h2 {
            text-align: center;
            color: #444;
        }
        .slideshow-container {
            position: relative;
            max-width: 100%;
            margin: auto;
            overflow: hidden;
            border-radius: 5px;
        }
        .slide {
            display: none;
            width: 100%;
        }
        .slide img {
            width: 100%;
            border-radius: 5px;
        }
        .prev, .next {
            cursor: pointer;
            position: absolute;
            top: 50%;
            transform: translateY(-50%);
            width: auto;
            padding: 10px;
            background: rgba(0, 0, 0, 0.5);
            color: white;
            font-weight: bold;
            border-radius: 50%;
            font-size: 18px;
            transition: 0.3s;
        }
        .prev:hover, .next:hover {
            background: rgba(0, 0, 0, 0.8);
        }
        .prev { left: 10px; }
        .next { right: 10px; }
        .facilities {
            margin-top: 20px;
        }
        .facility {
            background: #eee;
            padding: 15px;
            margin-bottom: 10px;
            border-left: 5px solid #333;
            border-radius: 5px;
        }
        .facility h3 {
            color: #333;
        }
        .facility p {
            color: #555;
        }
        .section-heading {
            color: #333;
            margin-top: 30px;
            text-align: center;
        }
    </style>
</head>
<body>

    <header>Galgotias University - Infrastructure & Facilities</header>

    <div class="container">
        <h2>Our Campus Infrastructure</h2>

        <!-- Slideshow Section -->
        <div class="slideshow-container">
           
            <!-- Added New Images -->
            <div class="slide">
                <img src="https://images.shiksha.com/mediadata/images/1539863271phpIYDff3.jpeg" alt="New Campus Image 1">
            </div>
            <div class="slide">
                <img src="https://abped-college-dashboard.s3.us-east-2.amazonaws.com/tted/college-backend/college/62f40228-2a00-49fe-9441-272076045790.jpg" alt="New Campus Image 2">
            </div>
            <div class="slide">
                <img src="https://www.galgotiasuniversity.edu.in/public/uploads/media/zjTjUueRtOcA36ovbqFxiPai9ETVmkIjkBbzP9UM.jpg" alt="New Campus Image 3">
            </div>
            <div class="slide">
                <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSO1qlSp0QOHB5h3pKo95MgjQFa1VIkLGUwMQ&s" alt="New Campus Image 4">
            </div>
            <div class="slide">
                <img src="https://www.ejusticeindia.com/wp-content/uploads/2020/06/Galgotias-University-Campus.jpg" alt="New Campus Image 5">
            </div>

            <!-- Slideshow Navigation -->
            <a class="prev" onclick="changeSlide(-1)">&#10094;</a>
            <a class="next" onclick="changeSlide(1)">&#10095;</a>
        </div>

        <div class="facilities">
            <h2 class="section-heading">Facilities We Offer</h2>

            <div class="facility">
                <h3>Library</h3>
                <p>Our library has over 1,30,000 books, 30,000 e-books, and access to 550+ national and international journals.</p>
            </div>

            <div class="facility">
                <h3>Cafeteria</h3>
                <p>A spacious and hygienic dining hall providing fresh vegetarian food to students and staff.</p>
            </div>

            <div class="facility">
                <h3>Hostel</h3>
                <p>Comfortable accommodation with modern amenities, including high-speed internet, security, and recreation rooms.</p>
            </div>

            <div class="facility">
                <h3>Sports Complex</h3>
                <p>Our sports complex includes a Cricket Ground, Basketball Court, Football Ground, Tennis Court, and more.</p>
            </div>

            <div class="facility">
                <h3>Labs</h3>
                <p>Well-equipped labs for Chemistry, Computer Science, Electrical Engineering, Mechanical Engineering, and more.</p>
            </div>

            <div class="facility">
                <h3>Other Facilities</h3>
                <p>Gym, Wi-Fi Campus, Medical Facilities, Shuttle Service, Auditorium, A/C Classrooms, Conference & Seminar Halls.</p>
            </div>

            <!-- New Sections Added -->
            <div class="facility">
                <h3>Computing Facilities</h3>
                <p>The Information Superhighway Centre (ISC) was established in March 2009 to act as a centre for outside/inside connectivity to the campus and serves as an Information Technology Center for promoting the effective use of IT systems and resource management.</p>
                <p>Computing Infrastructure Center (CIC) provides 24x7 internet facilities with email services to all users. Over 1195 high-end computers are available for academic, research, and recreational use. The campus also offers excellent internet connectivity with seamless wireless coverage through Cisco APs and has extensive surveillance cameras for security.</p>
            </div>

            <div class="facility">
                <h3>Hostel Code of Conduct</h3>
                <p>The hostel maintains a strict code of conduct that includes provisions against ragging, curfews, and the use of electrical appliances. Hostel rooms must be kept secure, and students must adhere to all rules regarding behavior, discipline, and usage of facilities.</p>
            </div>

            <div class="facility">
                <h3>Sports Facilities</h3>
                <p>Galgotias provides top-notch sports facilities including football, cricket, and volleyball grounds. Hostels are equipped with badminton courts, gymnasiums, and recreational halls. The sports club, along with a full-time physical instructor, ensures a dedicated focus on students' athletic and fitness needs.</p>
            </div>

        </div>
    </div>

    <script>
        let slideIndex = 0;
        showSlides();

        function showSlides() {
            let slides = document.getElementsByClassName("slide");
            for (let i = 0; i < slides.length; i++) {
                slides[i].style.display = "none";
            }
            slideIndex++;
            if (slideIndex > slides.length) { slideIndex = 1; }
            slides[slideIndex - 1].style.display = "block";
            setTimeout(showSlides, 3000); // Change slide every 3 seconds
        }

        function changeSlide(n) {
            let slides = document.getElementsByClassName("slide");
            slideIndex += n;
            if (slideIndex > slides.length) { slideIndex = 1; }
            if (slideIndex < 1) { slideIndex = slides.length; }
            for (let i = 0; i < slides.length; i++) {
                slides[i].style.display = "none";
            }
            slides[slideIndex - 1].style.display = "block";
        }
    </script>

</body>
</html>
