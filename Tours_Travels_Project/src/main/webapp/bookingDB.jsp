<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Booking</title>
 </head> 
<body>
 
    <% 
        // Get parameters from the form submission
        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String travelDates = request.getParameter("dates");
        String preferences = request.getParameter("preferences");
        String vehicle = request.getParameter("vehicle");
        String paymentMethod = request.getParameter("paymentMethod");

        // JDBC Connection variables
        String jdbcUrl = "jdbc:oracle:thin:@localhost:1521:ORCL";
        String dbUser = "system";
        String dbPassword = "tiger";

        // JDBC objects
        Connection conn = null;
        PreparedStatement ps = null;

        try {
            // Establish database connection
            Class.forName("oracle.jdbc.driver.OracleDriver");
            conn = DriverManager.getConnection(jdbcUrl, dbUser, dbPassword);

            // Prepare SQL statement to insert booking data
            String sql = "INSERT INTO booking (name, email, travel_dates, preferences, vehicle, payment_method) VALUES (?, ?, ?, ?, ?, ?)";
            ps = conn.prepareStatement(sql);
            ps.setString(1, name);
            ps.setString(2, email);
            ps.setString(3, travelDates);
            ps.setString(4, preferences);
            ps.setString(5, vehicle);
            ps.setString(6, paymentMethod);

            // Execute the SQL statement
            int rowsAffected = ps.executeUpdate();

            // Check if the insertion was successful
            if (rowsAffected > 0) {
                response.sendRedirect("Payment1.jsp");
            } else {
                out.println("<p>Error occurred. Please try again.</p>");
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            // Close JDBC objects
            try {
                if (ps != null) {
                    ps.close();
                }
                if (conn != null) {
                    conn.close();
                }
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
    %>
</body>
</html>
