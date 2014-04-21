package com.swust.teach.manager;

import java.util.Iterator;
import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.Transaction;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.swust.teach.forms.LoginActionForm;
import com.swust.teach.model.Manager;
import com.swust.teach.model.Parent;
import com.swust.teach.model.Teacher;
import com.swust.teach.util.HibernateSessionFactory;

public class LoginManagerImpl extends HibernateDaoSupport implements
		LoginManager {

	public int check(LoginActionForm laf) {
		int user_id=-1;
		Session session = null;
		
		Transaction tx=null;

		try {
			session = HibernateSessionFactory.getSession();
			tx=session.beginTransaction();

			List list= session.createQuery("select s.user_id, s.username, s.pwd from " +laf.getRote() +" s where s.username = '" 
					+laf.getUsername()+"' and s.pwd = '"
					+laf.getPwd()+"'").list();
			if(list.isEmpty()){
				return user_id;
			}else{
				for (Iterator iter=list.iterator(); iter.hasNext();) {
					Object[] obj = (Object[])iter.next();
					user_id=Integer.valueOf((obj[0]).toString()).intValue();
				}				
			}
			
			
			session.getTransaction().commit();
		} catch (HibernateException e) {
			tx.rollback();
			e.printStackTrace();
		} finally {
			try {
				HibernateSessionFactory.closeSession();
			} catch (HibernateException e) {
				e.printStackTrace();
			}
		}
		return user_id;
	}

	public int modifypwd(LoginActionForm laf, String idt, String rote) {
		Session session = null;
		Transaction tx=null;
		

		int bln=-1;
		int user_id=Integer.valueOf(idt).intValue();
		try {
			session = HibernateSessionFactory.getSession();
			tx=session.beginTransaction();
			
			
			if ("Teacher".equals(rote)) {
				Teacher thr = new Teacher();
				thr = (Teacher) session.get(Teacher.class, user_id);
				if (laf.getOldpwd().equals(thr.getPwd())) {
					thr.setPwd(laf.getPwd());
					bln = 1;
				}
				session.save(thr);
			} else if ("Parent".equals(rote)) {
				Parent prt = new Parent();
				prt = (Parent) session.get(Parent.class, user_id);
				if (laf.getOldpwd().equals(prt.getPwd())) {
					prt.setPwd(laf.getPwd());
					bln = 1;
				}
				session.save(prt);
			} else if ("Manager".equals(rote)) {
				Manager mgr = new Manager();
				mgr = (Manager) session.get(Manager.class, user_id);
				if (laf.getOldpwd().equals(mgr.getPwd())) {
					mgr.setPwd(laf.getPwd());
					bln = 5;
				}
				session.save(mgr);
			}
			
			session.getTransaction().commit();
		} catch (HibernateException e) {
			bln=-1;
			tx.rollback();
			e.printStackTrace();
		} finally {
			try {
				HibernateSessionFactory.closeSession();
			} catch (HibernateException e) {
				e.printStackTrace();
			}
		}
		return bln;
	}

	public boolean mgradd(LoginActionForm laf) {
		Session session = null;
		Transaction tx=null;
		
		boolean bln=true;
		try {
			session = HibernateSessionFactory.getSession();
			tx=session.beginTransaction();
			
			Manager mgr=new Manager();
			mgr.setUsername(laf.getUsername());
			mgr.setPwd(laf.getPwd());
			mgr.setRote("Manager");
						
			session.save(mgr);
			session.getTransaction().commit();
		} catch (HibernateException e) {
			bln=false;
			tx.rollback();
			e.printStackTrace();
		} finally {
			try {
				HibernateSessionFactory.closeSession();
			} catch (HibernateException e) {
				e.printStackTrace();
			}
		}
		return bln;
	}

}
