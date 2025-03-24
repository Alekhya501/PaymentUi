package com.grandhi.alekhya;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

@WebServlet("/Registration")
public class Registration extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		try {
			Connection con = dbcon.getcon();
			PrintWriter pw = response.getWriter();
			String uid = request.getParameter("userid");
			String uname = request.getParameter("userName");
			String pass = request.getParameter("password");
			String fname = request.getParameter("firstName");
			String lname = request.getParameter("lastName");
			String phno = request.getParameter("phone");
			String email = request.getParameter("email");
			String address = request.getParameter("address");
			String query = "INSERT INTO user_details(user_id, user_name, password, first_name, last_name, address, phone_number, email)  VALUES (?,?,?,?,?,?,?,?)";
			PreparedStatement ps = con.prepareStatement(query);
			ps.setInt(1, Integer.parseInt(uid));
			ps.setString(2, uname);
			ps.setString(3, pass);
			ps.setString(4, fname);
			ps.setString(5, lname);
			ps.setString(6, address);
			ps.setString(7, phno);
			ps.setString(8, email);
			int i = ps.executeUpdate();
			if (i > 0) {
				pw.print("insertion successfull");
				RequestDispatcher rd = request.getRequestDispatcher("Login.jsp");
				rd.forward(request, response);
			} else {
				pw.print("insertion not successfull");
				RequestDispatcher rd = request.getRequestDispatcher("Registration.jsp");
				rd.forward(request, response);

			}

		} catch (ClassNotFoundException | SQLException e) {
			PrintWriter pw = response.getWriter();
			pw.print("Error: " + e.getMessage());
			e.printStackTrace();
		}

	}

}
