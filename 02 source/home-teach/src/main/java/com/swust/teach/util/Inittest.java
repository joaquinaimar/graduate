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
				prt.setAddress("����·");
				prt.setCh_name("л" +i +"��");
				prt.setEmail("xx@163.com");
				prt.setMobel("1458556332" +i);
				prt.setPwd("111");
				prt.setQq("255455"+i);
				prt.setRegistertime(rt);
				prt.setRote("Student");
				prt.setSex("��");
				prt.setTelephone("604822" +i);
				prt.setUsername("pare" +i);
				session.save(prt);
				
			}
			
			for(int i=0; i<10; i++){
				Student stu=new Student();
				stu.setMobel("1346852112"+1);
				stu.setFirname(i +"0ѧԱ");
				stu.setSex("��");
				stu.setStudyinf("�����ڶ�");
				stu.setOnesubject("������ѧ");
				stu.setAddress("���" +i +"·" );
				stu.setPostdate(rt);
				stu.setPay("160");
				stu.setSchoolgrade("���ж��꼶");
				stu.setState("��Ƹ��");
				stu.setStudyinf("һ��");
				stu.setTelephone("608155" +i);
				stu.setThrequire("�ɼ����ã���ƷҪ��");
				session.save(stu);
			}	
			
			for(int i=0; i<14; i++){
				Teacher thr= new Teacher();
				thr.setUsername("user"+i);
				thr.setPwd("aaa");
				thr.setCh_name("��" +i +"��");
				thr.setSex("Ů");
				thr.setSchool("���Ͽƴ�");
				thr.setEmail("ift_"+i+"@163.com");
				thr.setOnesubject("����Ӣ��");
				thr.setEducation("�����ڶ�");
				thr.setSubject("��������");
				thr.setRegistertime(rt);
				thr.setExp_intr("�ɼ����ã����ڹ�ͨ��Ϊ�˺���");
				thr.setNation("��");
				thr.setProvince("�Ĵ�����");
				thr.setQq("1225545");
				thr.setRote("Teacher");
				thr.setTelephone("608121" +i);
				thr.setBirthday("1985-03-1" +i);
				thr.setState("��ְ��");
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
