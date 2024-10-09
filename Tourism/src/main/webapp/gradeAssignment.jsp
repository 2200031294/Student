<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Grade Assignment</title>
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
            justify-content: center;
            align-items: center;
            height: 80vh;
        }

        form {
            background-color: white;
            padding: 30px;
            border-radius: 8px;
            box-shadow: 0 0 15px rgba(0, 0, 0, 0.2);
            width: 400px;
            text-align: center;
        }

        input, select {
            width: 100%;
            padding: 10px;
            margin-bottom: 15px;
            border: 1px solid #ccc;
            border-radius: 5px;
            font-size: 16px;
        }

        button {
            width: 100%;
            background-color: #4CAF50;
            color: white;
            padding: 10px;
            border: none;
            border-radius: 5px;
            font-size: 18px;
            cursor: pointer;
        }

        button:hover {
            background-color: #45a049;
        }
    </style>
</head>
<body>

    <header>
        <h1>Grade Assignment</h1>
    </header>

    <main>
        <form action="submitGrade.jsp" method="POST">
            <label for="student">Select Student</label>
            <select name="student" id="student" required>
                <option value="">Choose a student</option>
                <option value="student1">Student 1</option>
                <option value="student2">Student 2</option>
                <option value="student3">Student 3</option>
                <!-- Add more students dynamically based on your database -->
            </select>

            <label for="assignment">Select Assignment</label>
            <select name="assignment" id="assignment" required>
                <option value="">Choose an assignment</option>
                <option value="assignment1">Assignment 1</option>
                <option value="assignment2">Assignment 2</option>
                <option value="assignment3">Assignment 3</option>
                <!-- Add more assignments dynamically based on your database -->
            </select>

            <label for="grade">Enter Grade</label>
            <input type="text" name="grade" id="grade" placeholder="Grade (e.g. A, B, 85%)" required>

            <button type="submit">Submit Grade</button>
        </form>
    </main>

</body>
</html>
