package com.swust.teach.manager;

import com.swust.teach.forms.PrtregActionForm;
import com.swust.teach.model.Parent;
import com.swust.teach.model.Teacher;

public interface PrtregManager {
	//ע��
	public boolean registerprt(PrtregActionForm paf);
	
	//����
	public boolean updateprt(PrtregActionForm paf, String prtid);
}
