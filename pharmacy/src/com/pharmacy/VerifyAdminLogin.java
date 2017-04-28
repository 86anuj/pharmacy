package com.pharmacy;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class VerifyAdminLogin {

	public static boolean checkLogin(String username, String password) {
		boolean status = false;
		Connection con = GetCon.getCon();
		try {
			PreparedStatement ps = con
					.prepareStatement("Select * from PHARMACYADMIN where username = ? and password = ?");
			ps.setString(1, username);
			ps.setString(2, password);

			ResultSet rs = ps.executeQuery();
			status = rs.next();

		} catch (SQLException e) {
			e.printStackTrace();
		}
		return status;
	}
}
