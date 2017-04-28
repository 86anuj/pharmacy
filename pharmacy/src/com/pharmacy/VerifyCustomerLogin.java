package com.pharmacy;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class VerifyCustomerLogin {

	public static boolean checkLogin(String custid, String username, String password) {
		boolean status = false;
		Connection con = GetCon.getCon();
		try {
			PreparedStatement ps = con
					.prepareStatement("Select * from CUSTOMER where id=? and username = ? and password =?");
			ps.setString(1, custid);
			ps.setString(2, username);
			ps.setString(3, password);

			ResultSet rs = ps.executeQuery();
			status = rs.next();

		} catch (SQLException e) {
			e.printStackTrace();
		}
		return status;
	}
}
