package edu.graduate.biteOfTianJin.application.activity.main.listener;

import edu.graduate.biteOfTianJin.application.activity.login.LoginActivity;
import edu.graduate.biteOfTianJin.basic.BaseActivity;
import edu.graduate.biteOfTianJin.basic.DialogUtil;
import edu.graduate.biteOfTianJin.basic.SessionStore;
import android.app.Activity;
import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;

public class ListItemClickListener implements OnItemClickListener {

	private Activity activity = null;

	public ListItemClickListener(Activity activity) {
		this.activity = activity;
	}

	@Override
	public void onItemClick(AdapterView<?> parent, View view, int position,
			long id) {
		if (null == SessionStore.username) {
			DialogUtil.alert(activity, "请先登录！");
			((BaseActivity) activity).redirectTo(LoginActivity.class);
		}

	}

}
