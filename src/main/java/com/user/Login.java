package com.user;

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


public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public Login() {
        super();
  
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter	out = response.getWriter();
		RequestDispatcher dispatch;
		String email = request.getParameter("txtemail");
		String pwd = request.getParameter("txtpwd");
		User user = null;
		
		//System.out.println(user);
			
		try {
			SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
			Session session = sessionFactory.openSession();
			session.beginTransaction();
			
			user = (User)session.createQuery("FROM User U WHERE U.email = :email")
					.setParameter("email", email)
					.uniqueResult();
			session.getTransaction().commit();
			//System.out.println(user);
            if (user != null && user.getPwd().equals(pwd)) {
                dispatch = request.getRequestDispatcher("UserDash.jsp");
                dispatch.forward(request, response);
            }else {
            	out.println("Invalid User");
                dispatch = request.getRequestDispatcher("UserLogin.jsp");
                dispatch.include(request, response);
            }
				
		}catch(Exception e) {
			e.printStackTrace();
		}
		
	}

}
