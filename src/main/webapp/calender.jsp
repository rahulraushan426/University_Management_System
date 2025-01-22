<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>University Calendar</title>
    <link rel="stylesheet" href="styles.css">
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 0;
        }
        .container {
            width: 80%;
            margin: 20px auto;
            background: white;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }
        h2, h3 {
            text-align: center;
            color: #333;
        }
        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
        }
        th, td {
            border: 1px solid #ddd;
            padding: 10px;
            text-align: center;
        }
        th {
            background-color: #007bff;
            color: white;
        }
        tr:nth-child(even) {
            background-color: #f9f9f9;
        }
        tr:hover {
            background-color: #f1f1f1;
        }
        .highlight {
            background-color: yellow !important;
        }
    </style>
</head>
<body>
    <div class="container">
        <h2>University Calendar</h2>
        
        <h3>Holidays</h3>
        <table id="holidayTable">
            <thead>
                <tr>
                    <th>Date</th>
                    <th>Holiday</th>
                </tr>
            </thead>
            <tbody>
                <tr><td>17/07/2024</td><td>Muharram</td></tr>
                <tr><td>01/08/2024</td><td>Non Instructional Days</td></tr>
                <tr><td>15/08/2024</td><td>Independence Day</td></tr>
                <tr><td>19/08/2024</td><td>Raksha Bandhan</td></tr>
                <tr><td>25/08/2024</td><td>Janamashtami</td></tr>
                <tr><td>02/10/2024</td><td>Mahatma Gandhi Jayanti</td></tr>
                <tr><td>12/10/2024</td><td>Dussehra</td></tr>
                <tr><td>31/10/2024</td><td>Diwali</td></tr>
                <tr><td>25/12/2024</td><td>Christmas</td></tr>
                <tr><td>26/01/2025</td><td>Republic Day</td></tr>
                <tr><td>14/03/2025</td><td>Holi</td></tr>
                <tr><td>14/04/2025</td><td>Ambedkar Jayanti</td></tr>
                <tr><td>18/04/2025</td><td>Good Friday</td></tr>
                <tr><td>12/05/2025</td><td>Buddha Purnima</td></tr>
            </tbody>
        </table>

        <h3>Events</h3>
        <table id="eventTable">
            <thead>
                <tr>
                    <th>Date</th>
                    <th>Event</th>
                </tr>
            </thead>
            <tbody>
                <tr><td>19/12/2024</td><td>Registration for Even Semester Starts</td></tr>
                <tr><td>23/12/2024</td><td>Registration for Even Semester ends</td></tr>
                <tr><td>31/07/2024</td><td>Last Instructional Day</td></tr>
                <tr><td>01/08/2024</td><td>Semester End Examination Starts</td></tr>
                <tr><td>10/08/2024</td><td>Semester End Examination Ends</td></tr>
                <tr><td>19/12/2024</td><td>Registration for Even Semester Starts</td></tr>
                <tr><td>06/01/2025</td><td>AMCAT</td></tr>
                <tr><td>01/12/2024</td><td>NCC- 2024</td></tr>
            </tbody>
        </table>
    </div>

</body>
</html>
