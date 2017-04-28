package com.pharmacy;

import javax.servlet.*;
import java.sql.*;

public class MyListener implements ServletContextListener {

	public void contextInitialized(ServletContextEvent arg0) {
		int status = 0;
		Connection con = null;
		try {
			con = GetCon.getCon();
			Statement ps1 = con
					.createStatement();
			try {
				ResultSet rs = ps1.executeQuery("Select * from CUSTOMER");
				rs.next();
			} catch (Exception e) {
				status = 2;
			}

			if (status == 0) {
				System.out.println("your table name already exist" + status);
			} else if (status == 2) {
				System.out
						.println("else if part table does not exist new table has created"
								+ status);

				PreparedStatement ps = con
						.prepareStatement("CREATE TABLE CUSTOMER(ID INT(20) AUTO_INCREMENT PRIMARY KEY,NAME VARCHAR(1000), USERNAME VARCHAR(100),PASSWORD VARCHAR(100), ADDERESS VARCHAR(1000),CITYNAME VARCHAR(200),STATENAME VARCHAR(200),COUNTRY VARCHAR(200),PHONE VARCHAR(100),EMAIL VARCHAR(200))");
				ps.executeUpdate();

				PreparedStatement ps2 = con
						.prepareStatement("CREATE TABLE ORDERS(ID INT(20) AUTO_INCREMENT PRIMARY KEY, CUST_ID INT(20), PRODUCTNAME VARCHAR(400),RATE DECIMAL(20,2),ORDERQ INT(20),STATUS VARCHAR(200) DEFAULT 'Placed',MANUFACTURER VARCHAR(400),AMOUNT DECIMAL(20,2),PRODTYPE VARCHAR(400), FOREIGN KEY (CUST_ID) REFERENCES CUSTOMER(ID) ON DELETE CASCADE)");
				ps2.executeUpdate();

				PreparedStatement ps4 = con
						.prepareStatement("CREATE TABLE  PHARMACYADMIN(USERNAME VARCHAR(100),PASSWORD VARCHAR(100))");
				ps4.executeUpdate();
				ps4 = con
						.prepareStatement("Insert into PHARMACYADMIN values(?,?)");
				ps4.setString(1, "admin");
				ps4.setString(2, "admin");

				ps4.executeUpdate();

			}

		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	public void contextDestroyed(ServletContextEvent arg0) {
		System.out.println("project undeployed");

	}
}
