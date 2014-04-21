package com.swust.teach.manager;

import com.swust.teach.forms.LoginActionForm;

public interface LoginManager {
	public int check(LoginActionForm laf);
	
	public int modifypwd(LoginActionForm laf, String user_id, String rote);
	
	
	public boolean mgradd(LoginActionForm laf);
}
