package com.swust.teach.manager;

import java.util.List;
import java.util.Set;

import com.swust.teach.model.Parent;
import com.swust.teach.model.Student;
import com.swust.teach.model.Teacher;

public interface MylistManager {
	//返回5个学员集合
	public List stuList();
	
	//返回5个教员集合
	public List thrList();
	
	//返回所有学员集合
	public List allstuList();
	
	//返回所有教员集合
	public List allthrList();
	
	//返回所有应聘的教员
	public Set thr_stu(String stuid);
	//返回一个学员
	public Student loadstu(String stuid);
	
	//返回一个教员
	public Teacher loadthr(String thrid);
	
	//返回一个教员
	public Parent loadprt(String prtid);
	
	//查找科目
	public List search(String subject);
}
