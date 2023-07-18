package com.user;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

public class Register extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public Register() {
        super();

    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			PrintWriter out = response.getWriter();
			RequestDispatcher dispatch;
			String name = request.getParameter("txtname");
			String email = request.getParameter("txtemail");
			String pwd = request.getParameter("txtpwd");
			
			User user = new User();
			user.setName(name);
			user.setEmail(email);
			user.setPwd(pwd);
			
			try {
				SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
				Session session = sessionFactory.openSession();
				session.beginTransaction();
				int i = (Integer) session.save(user);
				session.getTransaction().commit();
				
				if(i>0) {
	                dispatch = request.getRequestDispatcher("UserLogin.jsp");
	                dispatch.forward(request, response);
				}else {
					out.print("invalid details");
	                dispatch = request.getRequestDispatcher("publicREg.jsp");
	                dispatch.include(request, response);
				}
			} catch (Exception e) {
				e.printStackTrace();
			}
			
			
	}

}
