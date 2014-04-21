package com.swust.teach.manager;

import java.lang.reflect.InvocationTargetException;
import java.text.SimpleDateFormat;
import java.util.List;
import java.util.Set;

import org.apache.commons.beanutils.BeanUtils;
import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.Transaction;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.swust.teach.forms.StuActionForm;
import com.swust.teach.model.Student;
import com.swust.teach.model.Teacher;
import com.swust.teach.util.HibernateSessionFactory;

public class StuaddManagerImpl extends HibernateDaoSupport implements StuaddManager {

	public boolean addstu(StuActionForm saf, String prtid) {

		boolean bln=true;
		Session session = null;
		Student stu=new Student();
		Transaction tx=null;
		int prt_id=Integer.valueOf(prtid).intValue();
		System.out.println("laf.getRote() : "+saf.getSex());
		SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd hh:mm:ss");
		String time=sdf.format(new java.util.Date());
		
		try {
			session = HibernateSessionFactory.getSession();
			tx=session.beginTransaction();
			
			BeanUtils.copyProperties(stu,saf);
			stu.setPostdate(time);
			stu.setPrt_id(prt_id);
			stu.setState("诚聘中");
			session.save(stu);
			
			session.getTransaction().commit();
		} catch (HibernateException e) {
			bln=false;
			tx.rollback();
			e.printStackTrace();
		} catch (IllegalAccessException e) {
			bln=false;
			e.printStackTrace();
		} catch (InvocationTargetException e) {
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

	public boolean modifystu(StuActionForm saf, String stuid) {
		boolean bln=true;
		Session session = null;
		Student stu=new Student();
		Transaction tx=null;

		int stu_id=Integer.valueOf(stuid).intValue();

		try {
			session = HibernateSessionFactory.getSession();
			tx=session.beginTransaction();
			
			stu=(Student) session.get(Student.class, stu_id);	
			stu.setFirname(saf.getFirname());
			stu.setSchoolgrade(saf.getSchoolgrade());
			stu.setStudyinf(saf.getStudyinf());
			stu.setOnesubject(saf.getOnesubject());
			stu.setPay(saf.getPay());
			stu.setTelephone(saf.getTelephone());
			stu.setMobel(saf.getMobel());
			stu.setAddress(saf.getAddress());
			stu.setThrequire(saf.getThrequire());
			session.save(stu);
			
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

	public boolean employ(String stuid, String teacherid) {
		boolean bln=true;

		
		int stu_id=Integer.valueOf(stuid).intValue();
		int teacher_id=Integer.valueOf(teacherid).intValue();

		Teacher thr=new Teacher();
		Student stu=new Student();
		/*
		stu=(Massage) this.getHibernateTemplate().get(Massage.class, msg_id);
		thr=(Teacher) this.getHibernateTemplate().get(Teacher.class, teacher_id);
		Set teachers=stu.getTeachers();
		System.out.println(teachers.size());
		teachers.add(thr);
		System.out.println(teachers.size());
		stu.setTeachers(teachers);
		//this.getSessionFactory().close();
		this.getHibernateTemplate().save(stu);
		*/
		
		Session session = null;
		Transaction tx=null;

		try {
			
			session = HibernateSessionFactory.getSession();
			tx=session.beginTransaction();
			
			stu=(Student) session.get(Student.class, stu_id);
			thr=(Teacher) session.get(Teacher.class, teacher_id);
			
			Set teachers=stu.getThrs();
					

			teachers.add(thr);

			stu.setThrs(teachers);

			
			session.save(stu);
			

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

public boolean choosethr(String stuid, String thrid) {
		
		Session session = null;
		Transaction tx=null;
		int stu_id=Integer.valueOf(stuid).intValue();
		int thr_id=Integer.valueOf(thrid).intValue();
		boolean bln=true;
		Student stu=null;
		Teacher thr=null;
		List employs=null;
		try {
			session = HibernateSessionFactory.getSession();
			tx=session.beginTransaction();
			
			stu = (Student)session.get(Student.class, stu_id);
			stu.setThr_id(thr_id);
			stu.setState("已安排");//已安排 //诚聘中
			thr = (Teacher)session.get(Teacher.class, thr_id);
			thr.setState("工作中");//求职中 //工作中
			
			session.save(stu);
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
