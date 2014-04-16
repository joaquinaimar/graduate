package edu.graduate.biteOfTianJin.application.activity.start;

import java.sql.SQLException;

import android.os.Bundle;
import android.view.View;
import android.view.animation.AlphaAnimation;
import android.view.animation.Animation;
import android.view.animation.Animation.AnimationListener;

import com.j256.ormlite.dao.Dao;

import edu.graduate.biteOfTianJin.R;
import edu.graduate.biteOfTianJin.application.activity.main.MainActivity;
import edu.graduate.biteOfTianJin.basic.BaseActivity;
import edu.graduate.biteOfTianJin.domain.entity.ShopEntity;
import edu.graduate.biteOfTianJin.domain.entity.UserEntity;

public class StartActivity extends BaseActivity {

	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		final View view = View.inflate(this, R.layout.activity_start, null);
		setContentView(view);

		AlphaAnimation aa = new AlphaAnimation(0.3f, 1.0f);
		aa.setDuration(2000);
		view.startAnimation(aa);
		aa.setAnimationListener(new AnimationListener() {
			@Override
			public void onAnimationEnd(Animation arg0) {
				redirectTo(MainActivity.class);
			}

			@Override
			public void onAnimationRepeat(Animation animation) {
			}

			@Override
			public void onAnimationStart(Animation animation) {
			}

		});

		try {
			initData();
		} catch (SQLException e) {
			e.printStackTrace();
		}

	}

	private void initData() throws SQLException {
		Dao<ShopEntity, Integer> shopDao = getHelper().getDao(ShopEntity.class);
		shopDao.deleteBuilder().delete();
		ShopEntity shop = null;
		for (int i = 0; i < 10; i++) {
			shop = new ShopEntity();
			shop.setShopName("name" + i);
			shop.setSuggest("suggest" + i);
			shop.setPhoneNo("212121232");
			shopDao.create(shop);
		}

		Dao<UserEntity, Integer> userDao = getHelper().getDao(UserEntity.class);
		userDao.deleteBuilder().delete();
		UserEntity userEntity = new UserEntity();
		userEntity.setUsername("chihuo");
		userEntity.setPassword("123");
		userDao.create(userEntity);

	}

}
