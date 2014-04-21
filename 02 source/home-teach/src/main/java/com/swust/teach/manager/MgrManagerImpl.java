package com.swust.teach.manager;

import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.Transaction;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.swust.teach.model.Manager;
import com.swust.teach.model.Student;
import com.swust.teach.model.Parent;
import com.swust.teach.model.Teacher;
import com.swust.teach.util.HibernateSessionFactory;

public class MgrManagerImpl extends HibernateDaoSupport implements MgrManager {

	public boolean delemploy(String msgid, String teachid) {

		return false;
	}

	public boolean delstu(String stuid) {

		Session session = null;
		Transaction tx=null;
		int stu_id=Integer.valueOf(stuid).intValue();
		boolean delstu=true;
		Student student=null;
		try {
			session = HibernateSessionFactory.getSession();
			tx=session.beginTransaction();
			
			student = (Student)session.get(Student.class, stu_id);
			session.delete(student);
			
			session.getTransaction().commit();
		} catch (HibernateException e) {
			delstu = false;
			tx.rollback();
			e.printStackTrace();
		}finally {
			try {
				HibernateSessionFactory.closeSession();
			} catch (HibernateException e) {
				e.printStackTrace();
			}
		}
			
		return delstu;
	}

	public boolean delprt(String prtid) {
		Session session = null;
		Transaction tx=null;
		int prt_id=Integer.valueOf(prtid).intValue();
		Parent parent=null;
		boolean delprt=true;
		try {
			session = HibernateSessionFactory.getSession();
			tx=session.beginTransaction();
			
			parent = (Parent)session.get(Parent.class, prt_id);
			session.delete(parent);
			
			session.getTransaction().commit();
		} catch (HibernateException e) {
			delprt=false;
			tx.rollback();
			e.printStackTrace();
		}finally {
			try {
				HibernateSessionFactory.closeSession();
			} catch (HibernateException e) {
				e.printStackTrace();
			}
		}
		return delprt;
	}

	public boolean delthr(String thrid) {
		Session session = null;
		Transaction tx=null;
		boolean delthr=true;
		Teacher teacher=null;
		int thr_id=Integer.valueOf(thrid).intValue();
		try {
			session = HibernateSessionFactory.getSession();
			tx=session.beginTransaction();
			
			teacher = (Teacher)session.load(Teacher.class, thr_id);
			session.delete(teacher);
			
			session.getTransaction().commit();
		} catch (HibernateException e) {
			delthr=false;
			tx.rollback();
			e.printStackTrace();
		}finally {
			try {
				HibernateSessionFactory.closeSession();
			} catch (HibernateException e) {
				e.printStackTrace();
			}
		}
		return delthr;
	}

	public Student loadstu(String stuid) {
		Session session = null;
		Transaction tx=null;
		int stu_id=Integer.valueOf(stuid).intValue();
		Student student=null;
		try {
			session = HibernateSessionFactory.getSession();
			tx=session.beginTransaction();
			
			student = (Student)session.get(Student.class, stu_id);
			
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
		return student;
	}

	public Parent loadprt(String prtid) {
		Session session = null;
		Transaction tx=null;
		int prt_id=Integer.valueOf(prtid).intValue();
		Parent parent=null;
		try {
			session = HibernateSessionFactory.getSession();
			tx=session.beginTransaction();
			
			parent = (Parent)session.get(Parent.class, prt_id);
			
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
		return parent;
	}

	public Teacher loadthr(String thrid) {
		Session session = null;
		Transaction tx=null;
		Teacher teacher=null;
		int thr_id=Integer.valueOf(thrid).intValue();
		try {
			session = HibernateSessionFactory.getSession();
			tx=session.beginTransaction();
			
			teacher = (Teacher)session.get(Teacher.class, thr_id);
			
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
		return teacher;
	}

	public List stuList() {
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

	public List thrList() {
		Session session = null;
		Transaction tx=null;
		List thrList=null;
		try {
			session = HibernateSessionFactory.getSession();
			tx=session.beginTransaction();
			thrList = session.createQuery("from Teacher")
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

	public List prtList() {
		Session session = null;
		Transaction tx=null;
		List prtList=null;
		try {
			session = HibernateSessionFactory.getSession();
			tx=session.beginTransaction();
			prtList = session.createQuery("from Parent")
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
		return prtList;
	}

	public boolean delmgr(String mgrid) {
		Session session = null;
		Transaction tx=null;
		boolean delmgr=true;
		Manager mgr=null;
		int mgr_id=Integer.valueOf(mgrid).intValue();
		try {
			session = HibernateSessionFactory.getSession();
			tx=session.beginTransaction();
			
			mgr = (Manager)session.load(Manager.class, mgr_id);
			session.delete(mgr);
			
			session.getTransaction().commit();
		} catch (HibernateException e) {
			delmgr=false;
			tx.rollback();
			e.printStackTrace();
		}finally {
			try {
				HibernateSessionFactory.closeSession();
			} catch (HibernateException e) {
				e.printStackTrace();
			} 
		}
		return delmgr;
	}

	public List mgrList() {
		Session session = null;
		Transaction tx=null;
		List mgrList=null;
		try {
			session = HibernateSessionFactory.getSession();
			tx=session.beginTransaction();
			mgrList = session.createQuery("from Manager mgr where mgr.rote = :mgrrote")
									.setParameter("mgrrote", "Manager")
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
		return mgrList;
	}
}
