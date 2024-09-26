<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Delete User Result</title>
</head>
<body>
    <%
        String email = request.getParameter("email");

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

            // Prepare the SQL statement
            String sql = "DELETE FROM userInfo WHERE EMAIL=?";
            ps = conn.prepareStatement(sql);
            ps.setString(1, email);

            // Execute the delete operation
            int rowsAffected = ps.executeUpdate();

            if (rowsAffected > 0) {
                // User deleted successfully
                response.sendRedirect("DeleteUsersSuccess.jsp");
            } else {
                // User not found or deletion failed
                out.println("<h2>User with the provided email not found or deletion failed.</h2>");
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
