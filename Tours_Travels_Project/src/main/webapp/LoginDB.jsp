<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Login Result</title>
</head>
<body> 
    <%
        String email = request.getParameter("email");
        String password = request.getParameter("password");

        Connection conn = null;
        PreparedStatement ps = null;
        ResultSet resultSet = null;

        try {
            Class.forName("oracle.jdbc.OracleDriver");

            String jdbcUrl = "jdbc:oracle:thin:@localhost:1521:ORCL";
            String dbUser = "system";
            String dbPassword = "tiger";

            conn = DriverManager.getConnection(jdbcUrl, dbUser, dbPassword);
            ps = conn.prepareStatement("SELECT * FROM userInfo WHERE EMAIL=? AND PASSWORD=?");
            ps.setString(1, email);
            ps.setString(2, password);
            resultSet = ps.executeQuery();

            if (resultSet.next()) {
                // User authenticated successfully
                response.sendRedirect("index.jsp"); // Redirect to gallery.jsp after successful login
            } else {
                // Invalid credentials
                response.sendRedirect("InvalidUserEmailErrorPage.jsp"); // Redirect back to login.jsp with an error parameter
            }
        } catch (SQLException | ClassNotFoundException e) {
            e.printStackTrace();
        } finally {
            try {
                if (resultSet != null) {
                    resultSet.close();
                }
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
