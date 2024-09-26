<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ page import="java.io.PrintWriter"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>User Details</title>
    <style>
        body {
            background-color: #f0f0f0;
            font-family: Arial, sans-serif;
        }
        h2 {
            text-align: center;
            color: #333;
        }
        table {
            margin: 0 auto;
            border-collapse: collapse;
            width: 80%;
        }
        th, td {
            padding: 8px;
            text-align: left;
            border-bottom: 1px solid #ddd;
        }
        th {
            background-color: #f2f2f2;
            color: #333;
        }
        tr:nth-child(even) {
            background-color: #f9f9f9;
        }
    </style>
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
        ResultSet rs = smt.executeQuery("SELECT * FROM userInfo");
%>
    <h2>User Details</h2>
    <table border='1'>
        <tr>
            <th>Name</th>
            <th>Email</th>
            <th>Phone</th>
            <th>User Name</th>
            <th>Password</th>
            <th>Gender</th>
        </tr>
<%
        while(rs.next()) {
%>
        <tr>
            <td><%= rs.getString(1) %></td>
            <td><%= rs.getString(2) %></td>
            <td><%= rs.getString(3) %></td>
            <td><%= rs.getString(4) %></td>
            <td><%= rs.getString(5) %></td>
            <td><%= rs.getString(6) %></td>
        </tr>
<%
        }
%>
    </table>
<%
        rs.close();
        smt.close();
        con.close();
    } catch (Exception e) {
        e.printStackTrace();
    }
%>
</body>
</html>
