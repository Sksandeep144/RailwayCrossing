package com.user;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;


public class UserDao {
		
	public static List<User> getAllRecords(){  
	    List<User> list=new ArrayList<User>();  
	      
	    try{  
//	       Connection con=getConnection();  
//	        PreparedStatement ps=con.prepareStatement("select * from register");  
			SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
			Session session = sessionFactory.openSession();
			session.beginTransaction();
			list = session.createQuery("from User").getResultList();
			session.getTransaction().commit();
			System.out.println(list);
			
	    }catch(Exception e){System.out.println(e);}
		return list;   
	}  
}
