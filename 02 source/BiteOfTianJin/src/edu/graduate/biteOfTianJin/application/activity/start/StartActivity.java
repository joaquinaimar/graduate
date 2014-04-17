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
		ShopEntity shop1 = new ShopEntity();
		shop1.setShopName("双创包子店");
		shop1.setSuggest("综合日本包子和天津包子的特点，都是驴馅的");
		shop1.setType("天津菜");
		shop1.setPhoneNo("13821159240");
		shop1.setAveragePrice(10.0);
		shop1.setAddress("天津后广场");
		shopDao.create(shop1);

		ShopEntity shop2 = new ShopEntity();
		shop2.setShopName("双创火锅店");
		shop2.setSuggest("全世界唯一一个驴肉火锅");
		shop2.setType("川菜");
		shop2.setPhoneNo("13821159240");
		shop2.setAveragePrice(20.0);
		shop2.setAddress("天津空港经济区");
		shopDao.create(shop2);

		Dao<UserEntity, Integer> userDao = getHelper().getDao(UserEntity.class);
		userDao.deleteBuilder().delete();
		UserEntity userEntity = new UserEntity();
		userEntity.setUsername("chihuo");
		userEntity.setPassword("123");
		userDao.create(userEntity);

	}

}
