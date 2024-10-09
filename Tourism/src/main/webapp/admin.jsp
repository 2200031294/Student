<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin Dashboard</title>
    <link rel="stylesheet" href="styles.css">
</head>
<body>
    <div class="dashboard-container">
        <nav class="navbar">
            <h2>Admin Dashboard</h2>
            <ul>
                <!-- Updated Links to the JSP files for Assignment and Deadline Management -->
                <li><a href="addAssignment.jsp">Add Assignment</a></li>  <!-- Link to Add Assignment -->
                <li><a href="addDeadline.jsp">Add Deadline</a></li>      <!-- Link to Add Deadline -->
                <li><a href="logout.jsp">Logout</a></li>                  <!-- Link to Logout -->
            </ul>
        </nav>
        <div class="dashboard-content">
            <h3>Welcome, Admin!</h3>
            <p>Use the menu to manage assignments and deadlines for students.</p>
        </div>
    </div>
</body>
</html>
