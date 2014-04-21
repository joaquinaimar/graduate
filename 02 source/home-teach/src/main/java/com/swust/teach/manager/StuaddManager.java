package com.swust.teach.manager;

import com.swust.teach.forms.StuActionForm;

public interface StuaddManager {
	public boolean addstu(StuActionForm saf, String prtid);
	
	public boolean modifystu(StuActionForm saf, String prtid);
	
	public boolean employ(String stuid, String thrid);

	public boolean choosethr(String stu_id, String thr_id);
}
