package com.railway;

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


public class AddRail extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public AddRail() {
        super();
       
    }


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out = response.getWriter();
		RequestDispatcher dispatch;
		String name = request.getParameter("txtRname");
		String status = request.getParameter("txtstatus");
		String person = request.getParameter("txtpinc");
		String schedule = request.getParameter("txtsec");
		String landmark = request.getParameter("txtlm");
		String address = request.getParameter("txtaddr");
		
		RailWay rail = new RailWay();
		rail.setSName(name);
		rail.setCstatus(status);
		rail.setPcharge(person);
		rail.setTschedule(schedule);
		rail.setLmark(landmark);
		rail.setAddr(address);
		try {
			SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
			Session session = sessionFactory.openSession();
			session.beginTransaction();
			int i = (Integer) session.save(rail);
			session.getTransaction().commit();
			
			if(i>0) {
				dispatch = request.getRequestDispatcher("adminDash.jsp");
	            dispatch.forward(request, response);
			}else {
				out.println("Invalid Credentials Try again !!!!");
	            dispatch = request.getRequestDispatcher("AddCrossing.jsp");
	            dispatch.include(request, response);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		
	}

}
