// EmailVerificationServlet.java
package com.travel.lucky;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager; 
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet; 
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet(name = "EmailVerificationServlet", urlPatterns = {"/emailVerification"})
public class EmailVerificationServlet extends HttpServlet {
  
  protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
      try {
          verifyEmail(request, response);
      } catch (ClassNotFoundException | ServletException | IOException | SQLException e) {
          e.printStackTrace();
          // Handle other exceptions as needed
      } 
  } 
 
  protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
      try { 
          verifyEmail(request, response);
      } catch (ClassNotFoundException | ServletException | IOException | SQLException e) {
          e.printStackTrace();
          // Handle other exceptions as needed
      }
  }
  
  private void verifyEmail(HttpServletRequest request, HttpServletResponse response)
          throws ServletException, IOException, ClassNotFoundException, SQLException {
      String email = request.getParameter("email");
      boolean emailExists = checkEmailExists(email);

      if (emailExists) {
          // Email exists in the database, forward the request to ForgotPasswordServlet
          HttpSession session = request.getSession();
          session.setAttribute("email", email); 
          request.getRequestDispatcher("ForgotPassword").forward(request, response);
      } else { 
          // Email does not exist, display error message
          request.setAttribute("error", "Email not found. Please enter a valid email address.");
          request.getRequestDispatcher("InvalidForgotPassEmail.jsp").forward(request, response);
      }
  }  

  private boolean checkEmailExists(String email) throws ClassNotFoundException, SQLException {
      boolean emailExists = false;
      Connection con = null; 
      
      String userName="system";
      String password="tiger"; 
      String jdbcUrl = "jdbc:oracle:thin:@localhost:1521:ORCL";
      Class.forName("oracle.jdbc.driver.OracleDriver");
      
      con=DriverManager.getConnection(jdbcUrl,userName,password);
       
      String sql = "SELECT * FROM USERINFO WHERE EMAIL=?";
      PreparedStatement pst = con.prepareStatement(sql);
      pst.setString(1, email); 
      ResultSet rs = pst.executeQuery();

      if (rs.next()) {
          emailExists = true;
      }

      con.close();
      return emailExists;
  }
}
