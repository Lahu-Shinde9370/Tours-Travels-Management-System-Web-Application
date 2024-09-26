<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Payment Insert</title>
</head>
<body>
<%
    // Retrieve form data
    String cardholder = request.getParameter("cardholder");
    String cardNumber = request.getParameter("cardnumber");
    String cvv = request.getParameter("cvv");
    double amount = 10000.00; // Assuming a fixed amount of 10,000 RS

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

        // Prepare SQL statement to insert payment data
        String sql = "INSERT INTO payment (cardholder, card_number, cvv, amount) VALUES (?, ?, ?, ?)";
        ps = conn.prepareStatement(sql);
        ps.setString(1, cardholder);
        ps.setString(2, cardNumber);
        ps.setString(3, cvv);
        ps.setDouble(4, amount);

        // Execute the SQL statement
        int rowsAffected = ps.executeUpdate();

        // Check if the insertion was successful
        if (rowsAffected > 0) {
 			response.sendRedirect("welcomepage.jsp"); 
        } else {
            out.println("<p>Error occurred while inserting payment details. Please try again later.</p>");
        }
    } catch (SQLException | ClassNotFoundException e) {
        out.println("<p>Error occurred while processing your request. Please try again later.</p>");
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
