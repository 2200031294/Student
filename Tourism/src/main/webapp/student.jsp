<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Student Dashboard</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f0f0f0;
            margin: 0;
            padding: 0;
        }

        header {
            background-color: #4CAF50;
            color: white;
            text-align: center;
            padding: 20px;
            font-size: 24px;
        }

        main {
            display: flex;
            flex-direction: column;
            align-items: center;
            padding: 20px;
        }

        .dashboard {
            background-color: white;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 0 15px rgba(0, 0, 0, 0.2);
            width: 80%;
            max-width: 600px;
            text-align: center;
        }

        button {
            background-color: #4CAF50;
            color: white;
            padding: 10px;
            border: none;
            border-radius: 5px;
            font-size: 18px;
            cursor: pointer;
            margin: 10px 0;
            width: 100%;
        }

        button:hover {
            background-color: #45a049;
        }

        footer {
            background-color: #333;
            color: white;
            text-align: center;
            padding: 10px;
            position: fixed;
            width: 100%;
            bottom: 0;
        }

        .activity-list {
            text-align: left;
            margin-top: 20px;
        }

        .activity-item {
            background-color: #e7f3fe;
            padding: 10px;
            margin: 5px 0;
            border-radius: 5px;
        }
    </style>
</head>
<body>
    <header>
        <h1>Student Dashboard</h1>
        <a href="logout.jsp" style="color: white; float: right; margin-right: 20px;">Logout</a>  <!-- Logout link -->
    </header>

    <main>
        <div class="dashboard">
            <h2>Welcome, Student!</h2>
            <button onclick="window.location.href='viewGrades.jsp'">View Grades</button>
            <button onclick="window.location.href='viewAttendance.jsp'">View Attendance</button>
            <button onclick="window.location.href='viewActivities.jsp'">View Activities</button>
        </div>

        <div class="activity-list">
            <h3>Your Recent Activities</h3>
            <div class="activity-item">Participated in Math Competition</div>
            <div class="activity-item">Joined the Science Club</div>
            <div class="activity-item">Completed Assignment 1</div>
        </div>
    </main>

    <footer>
        <p>&copy; 2024 Student Performance Analysis</p>
    </footer>
</body>
</html>
