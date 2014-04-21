package com.swust.teach.util;

import java.text.SimpleDateFormat;

import junit.framework.TestCase;

import org.hibernate.Session;

import com.swust.teach.model.Manager;
import com.swust.teach.model.Parent;
import com.swust.teach.model.Student;
import com.swust.teach.model.Teacher;

public class Inittest extends TestCase {

	public void testupdate() {
		Session session = null;
		try {
			session = HibernateUtils.getSession();
			session.beginTransaction();
			SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd hh:mm:ss");
			String rt=sdf.format(new java.util.Date());
			
			Manager mgr= new Manager();
			mgr.setUsername("admin");
			mgr.setPwd("admin");
			mgr.setRote("admin");			
			session.save(mgr);
			
			for(int i=0; i<10; i++){
				Parent prt = new Parent();
				prt.setAddress("北京路");
				prt.setCh_name("谢" +i +"星");
				prt.setEmail("xx@163.com");
				prt.setMobel("1458556332" +i);
				prt.setPwd("111");
				prt.setQq("255455"+i);
				prt.setRegistertime(rt);
				prt.setRote("Student");
				prt.setSex("男");
				prt.setTelephone("604822" +i);
				prt.setUsername("pare" +i);
				session.save(prt);
				
			}
			
			for(int i=0; i<10; i++){
				Student stu=new Student();
				stu.setMobel("1346852112"+1);
				stu.setFirname(i +"0学员");
				stu.setSex("男");
				stu.setStudyinf("本科在读");
				stu.setOnesubject("高中数学");
				stu.setAddress("天河" +i +"路" );
				stu.setPostdate(rt);
				stu.setPay("160");
				stu.setSchoolgrade("高中二年级");
				stu.setState("诚聘中");
				stu.setStudyinf("一般");
				stu.setTelephone("608155" +i);
				stu.setThrequire("成绩良好，人品要高");
				session.save(stu);
			}	
			
			for(int i=0; i<14; i++){
				Teacher thr= new Teacher();
				thr.setUsername("user"+i);
				thr.setPwd("aaa");
				thr.setCh_name("张" +i +"红");
				thr.setSex("女");
				thr.setSchool("西南科大");
				thr.setEmail("ift_"+i+"@163.com");
				thr.setOnesubject("高中英语");
				thr.setEducation("本科在读");
				thr.setSubject("计算机软件");
				thr.setRegistertime(rt);
				thr.setExp_intr("成绩良好，善于沟通，为人和善");
				thr.setNation("汉");
				thr.setProvince("四川绵阳");
				thr.setQq("1225545");
				thr.setRote("Teacher");
				thr.setTelephone("608121" +i);
				thr.setBirthday("1985-03-1" +i);
				thr.setState("求职中");
				thr.setMobel("1345468412" +i);
				thr.setRote("Teacher");
				session.save(thr);
			}	
			session.getTransaction().commit();
		}catch(Exception e) {
			e.printStackTrace();
			session.getTransaction().rollback();
		}finally {
			HibernateUtils.closeSession(session);
		}
	}
	
}
