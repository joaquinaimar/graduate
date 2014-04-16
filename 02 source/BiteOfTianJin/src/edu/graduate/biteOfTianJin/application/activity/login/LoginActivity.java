package edu.graduate.biteOfTianJin.application.activity.login;

import java.sql.SQLException;
import java.util.List;

import android.os.Bundle;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Button;
import android.widget.EditText;

import com.j256.ormlite.dao.Dao;

import edu.graduate.biteOfTianJin.R;
import edu.graduate.biteOfTianJin.application.activity.main.MainActivity;
import edu.graduate.biteOfTianJin.basic.BaseActivity;
import edu.graduate.biteOfTianJin.basic.DialogUtil;
import edu.graduate.biteOfTianJin.basic.SessionStore;
import edu.graduate.biteOfTianJin.domain.entity.UserEntity;

public class LoginActivity extends BaseActivity {

	private EditText editTextUsername = null;

	private EditText editTextPassword = null;

	private Button btnLogin = null;

	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		setContentView(R.layout.activity_login);

		this.editTextUsername = (EditText) this
				.findViewById(R.id.editTextUsername);

		this.editTextPassword = (EditText) this
				.findViewById(R.id.editTextPassword);

		this.btnLogin = (Button) this.findViewById(R.id.btnLogin);
		this.btnLogin.setOnClickListener(new OnClickListener() {
			public void onClick(View v) {
				doLogin();
			}
		});

	}

	private void doLogin() {
		try {
			Dao<UserEntity, Integer> userDao = getHelper().getDao(
					UserEntity.class);
			List<UserEntity> userList = userDao.queryBuilder().where()
					.eq("USERNAME", editTextUsername.getText().toString())
					.and()
					.eq("PASSWORD", editTextPassword.getText().toString())
					.query();

			if (1 == userList.size()) {
				SessionStore.username = userList.get(0).getUsername();
				SessionStore.phoneNo = userList.get(0).getPhoneNo();
				redirectTo(MainActivity.class);
			} else {
				DialogUtil.alert(this, "登录失败！");
			}

		} catch (SQLException e) {
		}
	}
}
