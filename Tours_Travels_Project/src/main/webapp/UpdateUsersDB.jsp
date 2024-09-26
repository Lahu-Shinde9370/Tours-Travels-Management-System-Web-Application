<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Update User Result</title>
</head>
<body>
    <%
        // Get user information from the request parameters
        String email = request.getParameter("email");
        String name = request.getParameter("name");
        String uname = request.getParameter("uname");
        String pno = request.getParameter("pno");
        String pass1 = request.getParameter("pass1"); // Assuming this is the password field

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

            // Prepare the SQL statement for updating user information
            String sql = "UPDATE USERINFO SET NAME=?, USERNAME=?, PHONENO=?, PASSWORD=? WHERE EMAIL=?";
            ps = conn.prepareStatement(sql);
            // Set parameters for the update statement
            ps.setString(1, name);
            ps.setString(2, uname);
            ps.setString(3, pno);
            ps.setString(4, pass1);
            ps.setString(5, email); // This should match the WHERE condition

            // Execute the update operation
            int rowsAffected = ps.executeUpdate();

            if (rowsAffected > 0) {
                // User updated successfully
                response.sendRedirect("UpdateUsersSuccess.jsp");
            } else {
                // User not found or update failed
                out.println("<h2>User with the provided email not found or update failed.</h2>");
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
