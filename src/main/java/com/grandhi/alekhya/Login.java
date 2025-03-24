package com.grandhi.alekhya;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

@WebServlet("/Login")
public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter pw=response.getWriter();
		try {
			Connection con=dbcon.getcon();
			String uname=request.getParameter("userName");
			String pass=request.getParameter("password");
			System.out.println("Username: " + uname);
			System.out.println("Password: " + pass);
			String query="Select * from user_details where user_name=? And password=?";
			PreparedStatement ps=con.prepareStatement(query);
			ps.setString(1,uname);
			ps.setString(2,pass);
			ResultSet rs=ps.executeQuery();
			if(rs.next()) {
			    HttpSession hs=request.getSession();
			    hs.setAttribute("uname", rs.getString("user_name"));
//			    hs.setAttribute("firstName", rs.getString("first_name"));
//			    hs.setAttribute("lastName", rs.getString("last_name"));
//			    hs.setAttribute("email", rs.getString("email"));
//			    hs.setAttribute("phno", rs.getString("phone_number"));

			    pw.print("login successful");
			    RequestDispatcher rd=request.getRequestDispatcher("DashBoard.jsp");
			    rd.forward(request, response);
			}
			else {
				pw.print("login unsuccessfull");
				RequestDispatcher rd=request.getRequestDispatcher("Login.jsp");
				rd.forward(request, response);
				
			}
		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}

}
