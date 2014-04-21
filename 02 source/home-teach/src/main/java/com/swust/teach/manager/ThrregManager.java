package com.swust.teach.manager;

import com.swust.teach.forms.ThrregActionForm;
import com.swust.teach.model.Teacher;

public interface ThrregManager {
	//×¢²á
	public boolean registerthr(ThrregActionForm taf);
	
	//¸üÐÂ
	public boolean updatethr(ThrregActionForm taf, String thrid);

	public boolean changethrState(String thr_id);
}
