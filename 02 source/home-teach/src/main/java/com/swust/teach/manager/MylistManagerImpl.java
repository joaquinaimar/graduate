package com.swust.teach.manager;

import java.util.Iterator;
import java.util.List;
import java.util.Set;

import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.Transaction;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.swust.teach.model.Student;
import com.swust.teach.model.Parent;
import com.swust.teach.model.Teacher;
import com.swust.teach.util.HibernateSessionFactory;

public class MylistManagerImpl extends HibernateDaoSupport implements
		MylistManager {
	
	//得到1条学员
	public Student loadstu(String stuid){
		Session session = null;
		Transaction tx=null;
		int stu_id=Integer.valueOf(stuid).intValue();
		Student stu=null;
		List employs=null;
		try {
			session = HibernateSessionFactory.getSession();
			tx=session.beginTransaction();
			stu = (Student)session.get(Student.class, stu_id);
			employs =session.createQuery("from Teacher")
							.list();
			session.getTransaction().commit();
		} catch (HibernateException e) {
			tx.rollback();
			e.printStackTrace();
		}finally {
			try {
				HibernateSessionFactory.closeSession();
			} catch (HibernateException e) {
				e.printStackTrace();
			}
		}
		return stu; 
	}
	
	//得到所有5条学员信息
	public List stuList() {
		Session session = null;
		Transaction tx=null;
		List stulist=null;
		try {
			session = HibernateSessionFactory.getSession();
			tx=session.beginTransaction();
			stulist = session.createQuery("from Student")
									.setFirstResult(0)
									.setMaxResults(5)
									.list();
			session.getTransaction().commit();
		} catch (HibernateException e) {
			tx.rollback();
			e.printStackTrace();
		}finally {
			try {
				HibernateSessionFactory.closeSession();
			} catch (HibernateException e) {
				e.printStackTrace();
			}
		}
		return stulist;
	}
	
	//得到所有5条教员信息 
	public List thrList() {
		Session session = null;
		Transaction tx=null;
		List thrList=null;
		try {
			session = HibernateSessionFactory.getSession();
			tx=session.beginTransaction();
			thrList = session.createQuery("from Teacher")
									.setFirstResult(0)
									.setMaxResults(5)
									.list();
			session.getTransaction().commit();
		} catch (HibernateException e) {
			tx.rollback();
			e.printStackTrace();
		}finally {
			try {
				HibernateSessionFactory.closeSession();
			} catch (HibernateException e) {
				e.printStackTrace();
			}
		}
		return thrList;
	}
	
	//返回所有学员集合
	public List allstuList(){
		Session session = null;
		Transaction tx=null;
		List stuList=null;
		try {
			session = HibernateSessionFactory.getSession();
			tx=session.beginTransaction();
			stuList = session.createQuery("from Student")
									.list();
			session.getTransaction().commit();
		} catch (HibernateException e) {
			tx.rollback();
			e.printStackTrace();
		}finally {
			try {
				HibernateSessionFactory.closeSession();
			} catch (HibernateException e) {
				e.printStackTrace();
			}
		}
		return stuList;
	}
	
	//返回所有教员集合
	public List allthrList(){
		Session session = null;
		Transaction tx=null;
		List thrlist=null;
		try {
			session = HibernateSessionFactory.getSession();
			tx=session.beginTransaction();
			thrlist = session.createQuery("from Teacher")
									.list();
			session.getTransaction().commit();
		} catch (HibernateException e) {
			tx.rollback();
			e.printStackTrace();
		}finally {
			try {
				HibernateSessionFactory.closeSession();
			} catch (HibernateException e) {
				e.printStackTrace();
			}
		}
		return thrlist;
	}
	//得到教员详细信息
	public Teacher loadthr(String thrid){
		Session session = null;
		Transaction tx=null;
		Teacher thr=null;
		int thr_id=Integer.valueOf(thrid).intValue();
		try {
			session = HibernateSessionFactory.getSession();
			tx=session.beginTransaction();
			thr = (Teacher)session.get(Teacher.class, thr_id);
			session.getTransaction().commit();
		} catch (HibernateException e) {
			tx.rollback();
			e.printStackTrace();
		}finally {
			try {
				HibernateSessionFactory.closeSession();
			} catch (HibernateException e) {
				e.printStackTrace();
			}
		}
		return thr;
	}
	
	public List search(String subject){
		Session session = null;
		Transaction tx=null;
		List thrList=null;
		try {
			session = HibernateSessionFactory.getSession();
			tx=session.beginTransaction();
			
			thrList = session.createQuery("from Teacher t where t.onesubject like :mysubject or t.exp_intr like :mysubject")
							  .setParameter("mysubject", subject)
							  .list();
			
			session.getTransaction().commit();
		} catch (HibernateException e) {
			tx.rollback();
			e.printStackTrace();
		}finally {
			try {
				HibernateSessionFactory.closeSession();
			} catch (HibernateException e) {
				e.printStackTrace();
			}
		}
		return thrList;
	}

	public Parent loadprt(String prtid) {
		Session session = null;
		Transaction tx=null;
		Parent prt=null;
		int prt_id=Integer.valueOf(prtid).intValue();
		try {
			session = HibernateSessionFactory.getSession();
			tx=session.beginTransaction();
			prt = (Parent)session.get(Parent.class, prt_id);
			session.getTransaction().commit();
		} catch (HibernateException e) {
			tx.rollback();
			e.printStackTrace();
		}finally {
			try {
				HibernateSessionFactory.closeSession();
			} catch (HibernateException e) {
				e.printStackTrace();
			}
		}
		return prt;
	}

	public Set thr_stu(String stuid) {
		Session session = null;
		Transaction tx=null;
		int stu_id=Integer.valueOf(stuid).intValue();
		System.out.println("--stu_id---" +stu_id);
		Set thrs=null;
		Student stu=null;
		List employs=null;
		try {
			session = HibernateSessionFactory.getSession();
			tx=session.beginTransaction();
			stu = (Student)session.get(Student.class, stu_id);
			thrs = stu.getThrs(); 
			session.getTransaction().commit();
		} catch (HibernateException e) {
			tx.rollback();
			e.printStackTrace();
		}finally {
			try {
				HibernateSessionFactory.closeSession();
			} catch (HibernateException e) {
				e.printStackTrace();
			}
		}
		return thrs;
	}


}
