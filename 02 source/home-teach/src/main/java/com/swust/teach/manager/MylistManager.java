package com.swust.teach.manager;

import java.util.List;
import java.util.Set;

import com.swust.teach.model.Parent;
import com.swust.teach.model.Student;
import com.swust.teach.model.Teacher;

public interface MylistManager {
	//����5��ѧԱ����
	public List stuList();
	
	//����5����Ա����
	public List thrList();
	
	//��������ѧԱ����
	public List allstuList();
	
	//�������н�Ա����
	public List allthrList();
	
	//��������ӦƸ�Ľ�Ա
	public Set thr_stu(String stuid);
	//����һ��ѧԱ
	public Student loadstu(String stuid);
	
	//����һ����Ա
	public Teacher loadthr(String thrid);
	
	//����һ����Ա
	public Parent loadprt(String prtid);
	
	//���ҿ�Ŀ
	public List search(String subject);
}
