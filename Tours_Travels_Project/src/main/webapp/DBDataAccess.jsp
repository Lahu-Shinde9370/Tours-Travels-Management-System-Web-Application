<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>User Details</title>
</head>
<body>
    <% 
        PrintWriter pw = response.getWriter();
        response.setContentType("text/html");
        
        try {
            Class.forName("oracle.jdbc.OracleDriver");
            
            String url = "jdbc:oracle:thin:@localhost:1521:ORCL";
            String uname = "system";
            String pwd = "tiger";
            
            Connection con = DriverManager.getConnection(url, uname, pwd);
            Statement smt = con.createStatement();
            ResultSet rs = smt.executeQuery("select * from userInfo");
            
            pw.write("<h2>User Details</h2>");
            pw.write("<br/><table border='1'>");
            pw.write("<tr><th>Name</th><th>Email</th><th>Phone</th><th>User Name</th><th>Password</th><th>Gender</th></tr>");
            
            while (rs.next()) {
                pw.write("<tr><td>" + rs.getString(1) + "</td>");
                pw.write("<td>" + rs.getString(2) + "</td>");
                pw.write("<td>" + rs.getString(3) + "</td>");
                pw.write("<td>" + rs.getString(4) + "</td>");
                pw.write("<td>" + rs.getString(5) + "</td>");
                pw.write("<td>" + rs.getString(6) + "</td></tr>");
            }
            
            pw.write("</table>");
            rs.close();
            smt.close();
            con.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
    %>
</body>
</html>
