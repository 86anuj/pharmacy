package com.pharmacy;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class CreateServlet extends HttpServlet {

	public static final long serialVersionUID = 0;

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.setContentType("text/html");
		PrintWriter out = response.getWriter();

		String username = request.getParameter("username");
		String loginid = request.getParameter("loginid");
		String password = request.getParameter("password");
		String repassword = request.getParameter("repassword");
		String adderess = request.getParameter("adderess");
		String cityname = request.getParameter("cityname");
		String statename = request.getParameter("statename");

		String country = request.getParameter("country");

		String phone = request.getParameter("phone");
		String email = request.getParameter("email");

		int status = RegisterUser.register(username, loginid, password, repassword,
				 adderess, cityname, statename, country, phone, email);

		if (status > 0) {
			request.setAttribute("welcome", "Customer has been created");
			RequestDispatcher rd = request.getRequestDispatcher("customer.jsp");
			rd.include(request, response);
		} else {
			request.setAttribute("welcome", "Registration failed. Please try again later");
			RequestDispatcher rd = request.getRequestDispatcher("index.jsp");
			rd.include(request, response);
		}

		out.close();
	}

}
