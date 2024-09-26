<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Add Admin Result</title>
</head>
<body>
    <%
        // Retrieve the admin's email and password from the request parameters
        String email = request.getParameter("email");
        String password = request.getParameter("pass");

        Connection conn = null;
        PreparedStatement ps = null;

        try {
            // Load the Oracle JDBC driver
            Class.forName("oracle.jdbc.OracleDriver");

            // Connect to the database
            String jdbcUrl = "jdbc:oracle:thin:@localhost:1521:ORCL";
            String dbUser = "system";
            String dbPassword = "tiger";
            conn = DriverManager.getConnection(jdbcUrl, dbUser, dbPassword);

            // Prepare the SQL statement for inserting the admin into the database
            String sql = "INSERT INTO admin (email, password) VALUES (?, ?)";
            ps = conn.prepareStatement(sql);
            ps.setString(1, email);
            ps.setString(2, password);

            // Execute the insert operation
            int rowsAffected = ps.executeUpdate();

            if (rowsAffected > 0) {
                // Admin added successfully
            	response.sendRedirect("AddAdminSuccess.jsp");
            } else {
                // Admin addition failed
                out.println("<h2>Failed to add admin.</h2>");
            }
        } catch (ClassNotFoundException | SQLException e) {
            // Handle exceptions
            out.println("<h2>An error occurred: " + e.getMessage() + "</h2>");
            e.printStackTrace();
        } finally {
            // Close resources
            try {
                if (ps != null) {
                    ps.close();
                }
                if (conn != null) {
                    conn.close();
                }
            } catch (SQLException e) {
                // Handle closing errors
                out.println("<h2>An error occurred while closing resources: " + e.getMessage() + "</h2>");
                e.printStackTrace();
            }
        }
    %>
</body>
</html>
