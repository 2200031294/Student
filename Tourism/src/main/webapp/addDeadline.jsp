<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Add Deadline</title>
    <link rel="stylesheet" href="styles.css">
</head>
<body>
    <div class="container">
        <h2>Add Assignment Deadline</h2>
        <form action="saveDeadline.jsp" method="post">
            <label for="assignmentId">Assignment ID:</label>
            <input type="text" id="assignmentId" name="assignmentId" required>

            <label for="deadline">Deadline:</label>
            <input type="date" id="deadline" name="deadline" required>

            <label for="time">Time (Optional):</label>
            <input type="time" id="time" name="time">

            <button type="submit">Set Deadline</button>
        </form>
    </div>
</body>
</html>
