package com.entities;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.grandhi.alekhya.dbcon;

public class UserDao {
	public User getuserByUserId(int userid) throws ClassNotFoundException, SQLException {
		Connection con = dbcon.getcon();
		User u = null;
		String query = "select *from user_details where user_id=?";
		PreparedStatement ps = con.prepareStatement(query);
		ps.setInt(1, userid);
		ResultSet rs = ps.executeQuery();
		if (rs.next()) {
			u = new User();
			u.setLastName(rs.getString("last_name"));
			u.setUserName(rs.getString("user_name"));
			u.setPhoneNumber(rs.getString("phone_number"));
			u.setEmail(rs.getString("email"));
			u.setAddress(rs.getString("address"));

		}

		return u;

	}

}
