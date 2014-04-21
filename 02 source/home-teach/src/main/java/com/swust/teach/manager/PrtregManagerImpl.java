package com.swust.teach.manager;

import java.lang.reflect.InvocationTargetException;
import java.text.SimpleDateFormat;
import org.apache.commons.beanutils.BeanUtils;
import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.Transaction;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.swust.teach.forms.PrtregActionForm;
import com.swust.teach.model.Parent;
import com.swust.teach.util.HibernateSessionFactory;

public class PrtregManagerImpl extends HibernateDaoSupport implements
		PrtregManager {
	public boolean registerprt(PrtregActionForm paf) {

		boolean bln=true;
		Session session = null;
		
		Parent prt=new Parent();
		
		Transaction tx=null;
		SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd hh:mm:ss");
		String time=sdf.format(new java.util.Date());
		try {
			session = HibernateSessionFactory.getSession();
			tx=session.beginTransaction();
			BeanUtils.copyProperties(prt,paf);
			prt.setRote("Parent");
			prt.setRegistertime(time);
			session.save(prt);
			
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
	
	public boolean updateprt(PrtregActionForm paf, String prtid) {
		
		boolean bln=true;
		Parent prt=new Parent();
		int prt_id=Integer.valueOf(prtid).intValue();
		
		Session session = null;
		Transaction tx=null;
		try {
			session = HibernateSessionFactory.getSession();
			tx=session.beginTransaction();
			
			prt=(Parent)session.get(Parent.class, prt_id);
			prt.setAddress(paf.getAddress());
			prt.setCh_name(paf.getCh_name());
			prt.setEmail(paf.getEmail());
			prt.setQq(paf.getQq());
			prt.setMobel(paf.getMobel());
			prt.setTelephone(paf.getTelephone());
			
			session.save(prt);
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
