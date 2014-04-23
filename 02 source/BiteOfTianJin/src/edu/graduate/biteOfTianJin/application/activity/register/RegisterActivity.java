package edu.graduate.biteOfTianJin.application.activity.register;

import java.sql.SQLException;

import android.os.Bundle;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Button;
import android.widget.EditText;

import com.j256.ormlite.dao.Dao;

import edu.graduate.biteOfTianJin.R;
import edu.graduate.biteOfTianJin.application.activity.login.LoginActivity;
import edu.graduate.biteOfTianJin.basic.BaseActivity;
import edu.graduate.biteOfTianJin.basic.DialogUtil;
import edu.graduate.biteOfTianJin.domain.entity.UserEntity;

public class RegisterActivity extends BaseActivity {

	private EditText editTextRegisterUsername = null;

	private EditText editTextRegisterPassword = null;

	private EditText editTextRegisterPhone = null;

	private Button btnRegister = null;

	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		setContentView(R.layout.activity_register);

		this.editTextRegisterUsername = (EditText) this
				.findViewById(R.id.editTextRegisterUsername);

		this.editTextRegisterPassword = (EditText) this
				.findViewById(R.id.editTextRegisterPassword);

		this.editTextRegisterPhone = (EditText) this
				.findViewById(R.id.editTextRegisterPhone);

		this.btnRegister = (Button) this.findViewById(R.id.btnRegister);
		this.btnRegister.setOnClickListener(new OnClickListener() {
			public void onClick(View v) {
				doRegister();
			}
		});

	}

	private void doRegister() {
		try {
			Dao<UserEntity, Integer> userDao = getHelper().getDao(
					UserEntity.class);

			UserEntity user = new UserEntity();
			user.setUsername(editTextRegisterUsername.getText().toString());
			user.setPassword(editTextRegisterPassword.getText().toString());
			user.setPhoneNo(editTextRegisterPhone.getText().toString());
			userDao.create(user);
			DialogUtil.alert(this, "注册成功！");
			redirectTo(LoginActivity.class);

		} catch (SQLException e) {
		}
	}
}
