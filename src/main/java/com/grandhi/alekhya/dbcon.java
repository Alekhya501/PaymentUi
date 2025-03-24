package com.grandhi.alekhya;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class dbcon {
	static String url="jdbc:mysql://localhost:3306/payapp";
	static String username="root";
	static String password="1234";
	public static Connection getcon() throws SQLException, ClassNotFoundException {
		Class.forName("com.mysql.cj.jdbc.Driver");
		Connection con=DriverManager.getConnection(url,username,password);
		return con;
		
	}

}
