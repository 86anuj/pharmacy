package com.pharmacy;

import java.sql.*;

public class RegisterUser {
	static int status = 0;

	public static int register(String username, String loginid, String password,
			String repassword, String adderess,
			String cityname, String statename, String country, 
			String phone, String email) {

		Connection con = GetCon.getCon();
		PreparedStatement ps;
		try {
			ps = con.prepareStatement("Insert into CUSTOMER (NAME,USERNAME,PASSWORD,ADDERESS,CITYNAME,STATENAME,COUNTRY,PHONE,EMAIL) values(?,?,?,?,?,?,?,?,?)");
			ps.setString(1, username);
			ps.setString(2, loginid);
			ps.setString(3, password);
			ps.setString(4, adderess);
			ps.setString(5, cityname);
			ps.setString(6, statename);
			ps.setString(7, country);
			ps.setString(8, phone);
			ps.setString(9, email);

			status = ps.executeUpdate();

		} catch (SQLException e) {

			e.printStackTrace();
		}
		return status;

	}
}
