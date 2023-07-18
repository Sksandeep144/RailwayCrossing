package com.admin;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

import com.user.User;

public class LoginAdmin extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public LoginAdmin() {
        super();

    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter	out = response.getWriter();
		RequestDispatcher dispatch;
		String email = request.getParameter("txtemail");
		String pwd = request.getParameter("txtpwd");
		
		if(email.equalsIgnoreCase("admin@gmail.com") && pwd.equals("admin@123")) {
			dispatch = request.getRequestDispatcher("adminDash.jsp");
            dispatch.forward(request, response);
		}else {
        	out.println("Invalid Credentials Try again !!!!");
            dispatch = request.getRequestDispatcher("Govt.jsp");
            dispatch.include(request, response);
		}
				
		
	}

}
