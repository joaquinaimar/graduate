package com.swust.teach.manager;

import com.swust.teach.forms.PrtregActionForm;
import com.swust.teach.model.Parent;
import com.swust.teach.model.Teacher;

public interface PrtregManager {
	//×¢²á
	public boolean registerprt(PrtregActionForm paf);
	
	//¸üÐÂ
	public boolean updateprt(PrtregActionForm paf, String prtid);
}
