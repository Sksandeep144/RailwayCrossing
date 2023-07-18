package com.railway;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

import com.user.User;

public class RailDao {
	public static List<RailWay> getAllRecords(){  
	    List<RailWay> list = new ArrayList<RailWay>();  
	      
	    try{   
			SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
			Session session = sessionFactory.openSession();
			session.beginTransaction();
			list = session.createQuery("from RailWay").getResultList();
			session.getTransaction().commit();
			//System.out.println(list);

			
	    }catch(Exception e){System.out.println(e);}
		return list;   
	} 
	
	
	public static RailWay getRecordById(int id) {
		 RailWay rail = null;
	      
	    try{   
			SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
			Session session = sessionFactory.openSession();
			session.beginTransaction();
			rail = (RailWay)session.createQuery("from RailWay r WHERE r.id = :id")
					.setParameter("id",id)
					.uniqueResult();
			session.getTransaction().commit();

			
	    }catch(Exception e){System.out.println(e);}
		
		return rail;
			
	}
	
	
	public static List<RailWay> getAllfav() {
		List<RailWay> list = new ArrayList<RailWay>();  
	      
	    try{   
			SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
			Session session = sessionFactory.openSession();
			session.beginTransaction();
			list = session.createQuery("from RailWay r WHERE r.fav = :fav")
					.setParameter("fav","yes")
					.getResultList();
			session.getTransaction().commit();
	    }catch(Exception e){System.out.println(e);}
		
		return list;
			
	}
	
	
	
	public static void update(String id,String name,String status,String pcharge,String tschedule,String lmark,String addr) {
		int Id = Integer.parseInt(id);
		try{   
			SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
			Session session = sessionFactory.openSession();
			session.beginTransaction();
			RailWay rail = session.get(RailWay.class, Id);
			rail.setSName(name);
			rail.setCstatus(status);
			rail.setPcharge(pcharge);
			rail.setTschedule(tschedule);
			rail.setLmark(lmark);
			rail.setAddr(addr);
			session.save(rail);
			session.getTransaction().commit();
			
	    }catch(Exception e){System.out.println(e);}
		
	}
	
	public static void addFav(int id) {
		try{   
			SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
			Session session = sessionFactory.openSession();
			session.beginTransaction();
			RailWay rail = session.get(RailWay.class, id);
			rail.setFav("yes");
			session.save(rail);
			session.getTransaction().commit();
			
	    }catch(Exception e){System.out.println(e);}
		
	}
	
	public static void delFav(int id) {
		try{   
			SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
			Session session = sessionFactory.openSession();
			session.beginTransaction();
			RailWay rail = session.get(RailWay.class, id);
			rail.setFav("no");
			session.save(rail);
			session.getTransaction().commit();
			
	    }catch(Exception e){System.out.println(e);}
		
	}
	
	public static List<RailWay> getRecordByMatch(String name) {
		
		List<RailWay> list = new ArrayList<RailWay>();
	      
	    try{   
			SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
			Session session = sessionFactory.openSession();
			session.beginTransaction();
			list = session.createQuery("from RailWay r WHERE r.SName LIKE :name")
					.setParameter("name", "%"+name+"%").getResultList();
			session.getTransaction().commit();
			System.out.println(list);

	    }catch(Exception e){System.out.println(e);}
		
		return list;
		
	}
	
	public static void delete(String id)	{
		int Id = Integer.parseInt(id);
	    try{   
			SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
			Session session = sessionFactory.openSession();
			session.beginTransaction();
			RailWay rail = session.get(RailWay.class, Id);
			session.delete(rail);
			System.out.println(rail);
			session.getTransaction().commit();
			
	    }catch(Exception e){System.out.println(e);}
	}
}
