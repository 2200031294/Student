<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Student Dashboard</title>
    <link rel="stylesheet" href="styles.css">
</head>
<body>
    <div class="dashboard-container">
        <nav class="navbar">
            <h2>Student Dashboard</h2>
            <ul>
                <li><a href="viewAssignmentStatus.jsp">View Assignment Status</a></li> <!-- Link to View Assignment Status -->
                <li><a href="viewAssignmentGrades.jsp">View Assignment Grades</a></li> <!-- Link to View Assignment Grades -->
                <li><a href="logout.jsp">Logout</a></li> <!-- Link to Logout -->
            </ul>
        </nav>
        <div class="dashboard-content">
            <h3>Welcome, Student!</h3>
            <p>Use the menu to view your assignments and grades.</p>
        </div>
    </div>
</body>
</html>
