package com.travel.lucky;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class RegisAccessDataDB
 */
@WebServlet("/RegisAccessDataDB")
public class RegisAccessDataDB extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public RegisAccessDataDB() {
        super();
         
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter pw=response.getWriter();
		response.setContentType("text/html");
	try {
		Class.forName("oracle.jdbc.OracleDriver");
		String url="jdbc:oracle:thin:@localhost:1521:ORCL";
		String uname="system";
		String pwd="tiger";
		
		Connection con = DriverManager.getConnection(url, uname, pwd);
		Statement smt=con.createStatement();
		ResultSet rs=smt.executeQuery("select *from userInfo");
		pw.write("<h2>User Details</h2>");
		pw.write("<br/><table border='1'>");
		pw.write("<tr><th>Name</th><th> Email</th><th>Phone</th><th>User Name</th><th>Password</th><th>Gender</th></tr>");
		while(rs.next())
		{
			pw.write("<tr><td>"+rs.getString(1)+"</td>");
			pw.write("<td>"+rs.getString(2)+"</td>");
			pw.write("<td>"+rs.getString(3)+"</td>");
			pw.write("<td>"+rs.getString(4)+"</td>");
			pw.write("<td>"+rs.getString(5)+"</td>");
			pw.write("<td>"+rs.getString(6)+"</td></tr>");
			 
			 
		}
		pw.write("</table>");
		rs.close();
		smt.close();
		con.close();
	} 
	catch (Exception e) {
 		e.printStackTrace();
	}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		 
		doGet(request, response);
	}

}
