<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.sql.*" %> <!-- Import SQL classes for database access -->
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>View Attendance</title>
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

        table {
            width: 80%;
            border-collapse: collapse;
            margin-top: 20px;
            background-color: white;
        }

        th, td {
            border: 1px solid #ccc;
            padding: 10px;
            text-align: center;
        }

        th {
            background-color: #4CAF50;
            color: white;
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

        .back-button {
            margin-top: 20px;
            padding: 10px 20px;
            background-color: #4CAF50;
            color: white;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            font-size: 16px;
        }

        .back-button:hover {
            background-color: #45a049;
        }
    </style>
</head>
<body>
    <header>
        <h1>View Attendance</h1>
        <a href="student.jsp" style="color: white; float: right; margin-right: 20px;">Dashboard</a> <!-- Link to student dashboard -->
    </header>

    <main>
        <h2>Your Attendance Records</h2>
        <table>
            <thead>
                <tr>
                    <th>Date</th>
                    <th>Status</th>
                    <th>Remarks</th>
                </tr>
            </thead>
            <tbody>
                <% 
                    // Sample database connection and query
                    Connection conn = null;
                    PreparedStatement ps = null;
                    ResultSet rs = null;
                    try {
                        // Load JDBC driver (replace with your driver name)
                        Class.forName("com.mysql.cj.jdbc.Driver");
                        // Establish connection (replace with your database URL, username, and password)
                        conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/your_db", "username", "password");
                        
                        // Get student ID from session or parameter
                        int studentId = (int) session.getAttribute("studentId"); // Example session attribute

                        // Query to fetch attendance records
                        String query = "SELECT date, status, remarks FROM attendance WHERE student_id = ?";
                        ps = conn.prepareStatement(query);
                        ps.setInt(1, studentId);
                        rs = ps.executeQuery();

                        // Display attendance records
                        while (rs.next()) {
                            String date = rs.getString("date");
                            String status = rs.getString("status");
                            String remarks = rs.getString("remarks");
                %>
                <tr>
                    <td><%= date %></td>
                    <td><%= status %></td>
                    <td><%= remarks %></td>
                </tr>
                <% 
                        } // End of while loop
                    } catch (Exception e) {
                        e.printStackTrace();
                    } finally {
                        // Close resources
                        if (rs != null) try { rs.close(); } catch (SQLException e) { e.printStackTrace(); }
                        if (ps != null) try { ps.close(); } catch (SQLException e) { e.printStackTrace(); }
                        if (conn != null) try { conn.close(); } catch (SQLException e) { e.printStackTrace(); }
                    }
                %>
            </tbody>
        </table>
        <button class="back-button" onclick="window.location.href='student.jsp'">Back to Dashboard</button>
    </main>

    <footer>
        <p>&copy; 2024 Student Performance Analysis</p>
    </footer>
</body>
</html>
