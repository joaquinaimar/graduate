package com.swust.teach.manager;

import com.swust.teach.forms.ThrregActionForm;
import com.swust.teach.model.Teacher;

public interface ThrregManager {
	//ע��
	public boolean registerthr(ThrregActionForm taf);
	
	//����
	public boolean updatethr(ThrregActionForm taf, String thrid);

	public boolean changethrState(String thr_id);
}
