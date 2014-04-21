package com.swust.teach.manager;

import java.util.List;

import com.swust.teach.model.Student;
import com.swust.teach.model.Parent;
import com.swust.teach.model.Teacher;

public interface MgrManager {
	//加载单个教员信息
	public Teacher loadthr(String thrid);
	
	//删除单个教员信息
	public boolean delthr(String thrid);

	//加载单个学员信息
	public Student loadstu(String stuid);
	
	//删除单个学员信息
	public boolean delstu(String stuid);

	//删除单个管理信息
	public boolean delmgr(String mgrid);
	
	//加载单个家长信息
	public Parent loadprt(String prtid);
	
	//删除单个家长信息
	public boolean delprt(String prtid);
	
	//删除单个应聘信息
	public boolean delemploy(String stuid,String thrid);
	
	//加载教员列表
	public List thrList();
	
	//加载学员列表
	public List stuList();
	
	//加载学员列表
	public List mgrList();
	
	//加载家长列表
	public List prtList();
	
}
