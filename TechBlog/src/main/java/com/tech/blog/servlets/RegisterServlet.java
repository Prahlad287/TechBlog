package com.tech.blog.servlets;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

import org.eclipse.jdt.internal.compiler.ast.IfStatement;

import com.tech.blog.dao.UserDao;
import com.tech.blog.entities.User;
import com.tech.blog.helper.ConnectionProvider;

@MultipartConfig
public class RegisterServlet extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
				
		PrintWriter out=response.getWriter();
		String check=request.getParameter("check");
		if (check==null) {
			out.println("Box not checked");
		}else {
		String name=request.getParameter("UserName");
		String email=request.getParameter("UserEmail");
		String password=request.getParameter("Password");
		String gender=request.getParameter("gender");
		String about=request.getParameter("about");
		
		
		System.out.println(gender);
		User user=new User(name,email,password,gender,about);
		UserDao userDao=new UserDao(ConnectionProvider.getConnection());
		if(userDao.saveUser(user)) {
			out.println("done");
		}else {
			out.println("Fill any details");
		}
		
		}
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
