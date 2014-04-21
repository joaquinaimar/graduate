package com.swust.teach.manager;

import java.util.List;

import com.swust.teach.model.Student;
import com.swust.teach.model.Parent;
import com.swust.teach.model.Teacher;

public interface MgrManager {
	//���ص�����Ա��Ϣ
	public Teacher loadthr(String thrid);
	
	//ɾ��������Ա��Ϣ
	public boolean delthr(String thrid);

	//���ص���ѧԱ��Ϣ
	public Student loadstu(String stuid);
	
	//ɾ������ѧԱ��Ϣ
	public boolean delstu(String stuid);

	//ɾ������������Ϣ
	public boolean delmgr(String mgrid);
	
	//���ص����ҳ���Ϣ
	public Parent loadprt(String prtid);
	
	//ɾ�������ҳ���Ϣ
	public boolean delprt(String prtid);
	
	//ɾ������ӦƸ��Ϣ
	public boolean delemploy(String stuid,String thrid);
	
	//���ؽ�Ա�б�
	public List thrList();
	
	//����ѧԱ�б�
	public List stuList();
	
	//����ѧԱ�б�
	public List mgrList();
	
	//���ؼҳ��б�
	public List prtList();
	
}
