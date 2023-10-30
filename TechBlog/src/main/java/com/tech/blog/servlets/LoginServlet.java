package com.tech.blog.servlets;

import java.io.IOException;
import java.io.PrintWriter;

import com.tech.blog.dao.UserDao;
import com.tech.blog.entities.User;
import com.tech.blog.helper.ConnectionProvider;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@MultipartConfig
public class LoginServlet extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub

		PrintWriter out = response.getWriter();

		// fetch username and password
		String email = request.getParameter("email");
		String password = request.getParameter("password");

		UserDao userDao = new UserDao(ConnectionProvider.getConnection());
		User u = userDao.getUserByEmailAndPassword(email, password);
		if (u == null) {
			// logn error
			// out.println("Invalid details");
			com.tech.blog.entities.Message msg = new com.tech.blog.entities.Message("Invalid Details ! try another ",
					"error", "alert-danger");
			HttpSession session = request.getSession();
			session.setAttribute("msg", msg);
			response.sendRedirect("Login_page.jsp");
		} else {
			// login success
			HttpSession session = request.getSession();
			session.setAttribute("currentUser", u);
			response.sendRedirect("Profile.jsp");
			out.println("done");
		}

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
