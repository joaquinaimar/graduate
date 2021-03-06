package edu.graduate.biteOfTianJin.basic;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.view.KeyEvent;
import android.view.Menu;
import android.view.MenuItem;

import com.j256.ormlite.android.apptools.OrmLiteBaseActivity;

import edu.graduate.biteOfTianJin.R;
import edu.graduate.biteOfTianJin.application.activity.login.LoginActivity;
import edu.graduate.biteOfTianJin.application.activity.main.MainActivity;
import edu.graduate.biteOfTianJin.application.activity.register.RegisterActivity;

public class BaseActivity extends OrmLiteBaseActivity<SqliteHelper> {

	@Override
	public boolean onCreateOptionsMenu(Menu menu) {
		super.onCreateOptionsMenu(menu);
		getMenuInflater().inflate(R.menu.main, menu);
		return true;
	}

	@Override
	public boolean onOptionsItemSelected(MenuItem item) {
		switch (item.getItemId()) {
		case R.id.action_login:
			redirectTo(LoginActivity.class);
			break;
		case R.id.action_register:
			redirectTo(RegisterActivity.class);
			break;
		case R.id.action_back:
			redirectTo(MainActivity.class);
			break;
		case R.id.action_exit:
			ExitApplication.getInstance().exit();
			break;
		}
		return super.onOptionsItemSelected(item);
	}

	@Override
	public boolean onKeyDown(int keyCode, KeyEvent event) {
		if (keyCode == KeyEvent.KEYCODE_BACK && event.getRepeatCount() == 0) {
			if (!"MainActivity".equals(this.getClass().getSimpleName()))
				redirectTo(MainActivity.class);
			else
				ExitApplication.getInstance().exit();
		}
		return false;
	}

	public <T extends Activity> void redirectTo(Class<T> t, String name,
			Bundle bundle) {
		Intent intent = new Intent(this, t);
		intent.putExtra(name, bundle);
		startActivity(intent);
		finish();
	}

	public <T extends Activity> void redirectTo(Class<T> t) {
		Intent intent = new Intent(this, t);
		startActivity(intent);
		finish();
	}

}
