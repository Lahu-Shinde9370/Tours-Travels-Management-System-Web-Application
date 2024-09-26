<%@page import="java.io.PrintWriter"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.sql.*,javax.servlet.http.HttpServletRequest,javax.servlet.http.HttpServletResponse"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>RegistrationDB</title> 
 
</head> 
<body> 
<%
String name = request.getParameter("name");
String email = request.getParameter("email");
String pno = request.getParameter("pno");
String usname = request.getParameter("uname");
String gender = request.getParameter("gender");
String pwd1 = request.getParameter("pass1");
 
// Add validation for the gender parameter
boolean isGenderValid = false;
if (gender != null) {
    if (gender.equals("Male") || gender.equals("Female") || gender.equals("Other")) {
      isGenderValid = true;
    }
}

if (name != null && isGenderValid ) {//&& isGenderValid
    try {
        Class.forName("oracle.jdbc.OracleDriver");

        String url = "jdbc:oracle:thin:@localhost:1521:ORCL";
        String uname = "system";
        String pwd = "tiger";
        
        Connection conn = DriverManager.getConnection(url, uname, pwd);
        PreparedStatement ps = conn.prepareStatement("insert into userInfo(Name, Email, Phoneno, Username, Password, Gender) values(?,?,?,?,?,?)");

        ps.setString(1, name);
        ps.setString(2, email);
        ps.setString(3, pno);
        ps.setString(4, usname);
        ps.setString(5, pwd1);
        ps.setString(6, gender);

        int x = ps.executeUpdate();
        if (x != 0) { 
            response.sendRedirect("login.jsp"); 
        } else {
            out.println("Something went wrong...");
        }
    } catch (ClassNotFoundException e) {
        out.println(e);
    } catch (Exception ex) 
    {
        out.println(ex);
    }
} else {
    out.println("Fill all the form properly..");
}
%>
</body>
</html>
