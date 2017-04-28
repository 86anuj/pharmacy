package com.pharmacy;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class VerifyOrderAvailability {

	public static boolean checkOrder(double id) {
		boolean status = false;
		Connection con = GetCon.getCon();
		try {
			PreparedStatement ps = con
					.prepareStatement("Select * from ORDERS where id =?");
			ps.setDouble(1, id);

			ResultSet rs = ps.executeQuery();
			status = rs.next();

		} catch (SQLException e) {
			e.printStackTrace();
		}
		return status;
	}
}
