package com.swust.teach.manager;

import java.lang.reflect.InvocationTargetException;
import java.text.SimpleDateFormat;
import java.util.List;

import org.apache.commons.beanutils.BeanUtils;
import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.Transaction;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.swust.teach.forms.ThrregActionForm;
import com.swust.teach.model.Parent;
import com.swust.teach.model.Teacher;
import com.swust.teach.util.HibernateSessionFactory;

public class ThrregManagerImpl extends HibernateDaoSupport implements
		ThrregManager {

	public boolean registerthr(ThrregActionForm taf) {
		Transaction tx=null;
		Session session = null;
		
		Teacher thr=new Teacher();
		boolean bln=true;
		
		
		SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd hh:mm:ss");
		String time=sdf.format(new java.util.Date());
		try {
			session = HibernateSessionFactory.getSession();
			tx=session.beginTransaction();
			BeanUtils.copyProperties(thr,taf);
			thr.setRote("Teacher");
			thr.setState("求职中");
			thr.setRegistertime(time);
			session.save(thr);
			
			session.getTransaction().commit();
		} catch (HibernateException e) {
			bln=false;
			tx.rollback();
			e.printStackTrace();
		} catch (IllegalAccessException e) {
			bln=false;
			tx.rollback();
			e.printStackTrace();
		} catch (InvocationTargetException e) {
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

	public boolean updatethr(ThrregActionForm taf, String thrid) {

		
		boolean bln=true;
		int thr_id=Integer.valueOf(thrid).intValue();
		Teacher thr=new Teacher();
	
		Session session = null;
		Transaction tx=null;
		try {
			session = HibernateSessionFactory.getSession();
			tx=session.beginTransaction();

			thr=(Teacher)session.get(Teacher.class, thr_id);
			thr.setEducation(taf.getEducation());
			thr.setSchool(taf.getSchool());
			thr.setSubject(taf.getSubject());
			thr.setEmail(taf.getEmail());
			thr.setMobel(taf.getMobel());
			thr.setQq(taf.getQq());
			thr.setTelephone(taf.getTelephone());
			thr.setOnesubject(taf.getOnesubject());
			thr.setExp_intr(taf.getExp_intr());
			
			session.save(thr);
			System.out.println("session.save(thr);");
			session.getTransaction().commit();
		} catch (HibernateException e) {
			tx.rollback();
			bln=false;
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
	
	public boolean changethrState(String thrid) {
		boolean bln=true;
		Session session = null;
		Transaction tx=null;
		int thr_id=Integer.valueOf(thrid).intValue();
		Teacher thr=null;
		List employs=null;
		try {
			session = HibernateSessionFactory.getSession();
			tx=session.beginTransaction();

			thr = (Teacher)session.get(Teacher.class, thr_id);
			thr.setState("求职中");
			
			session.save(thr);
			session.getTransaction().commit();
		} catch (HibernateException e) {
			bln=false;
			tx.rollback();
			e.printStackTrace();
		}finally {
			try {
				HibernateSessionFactory.closeSession();
			} catch (HibernateException e) {
				e.printStackTrace();
			}
		}
		return bln;
	}
}
