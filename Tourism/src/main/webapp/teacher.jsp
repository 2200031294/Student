<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Teacher Dashboard</title>
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

        nav {
            background-color: #333;
            padding: 10px;
            text-align: center;
        }

        nav a {
            color: white;
            text-decoration: none;
            padding: 10px 20px;
            margin: 0 10px;
            border-radius: 5px;
            background-color: #4CAF50;
            transition: background-color 0.3s;
        }

        nav a:hover {
            background-color: #45a049;
        }

        main {
            display: flex;
            justify-content: center;
            align-items: center;
            height: 80vh;
            flex-direction: column;
        }

        .btn {
            display: inline-block;
            padding: 15px 30px;
            font-size: 18px;
            color: white;
            background-color: #4CAF50;
            text-decoration: none;
            border-radius: 5px;
            margin: 10px;
            transition: background-color 0.3s;
        }

        .btn:hover {
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
    </style>
</head>
<body>

    <header>
        <h1>Teacher Dashboard</h1>
    </header>

    <nav>
        <!-- Navigation Links -->
        <a href="gradeAssignment.jsp">Grade Assignment</a>  <!-- Link to Grade Assignment Page -->
        <a href="logout.jsp">Logout</a>  <!-- Link to Logout Page -->
    </nav>

    <main>
        <h2>Welcome, Teacher!</h2>
        <p>Select an option from the menu to get started.</p>
    </main>

    <footer>
        <p>&copy; 2024 Student Performance and Analysis</p>
    </footer>

</body>
</html>
