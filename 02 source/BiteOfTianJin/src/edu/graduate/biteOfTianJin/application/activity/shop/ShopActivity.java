package edu.graduate.biteOfTianJin.application.activity.shop;

import java.sql.SQLException;

import com.j256.ormlite.dao.Dao;

import android.os.Bundle;
import edu.graduate.biteOfTianJin.R;
import edu.graduate.biteOfTianJin.basic.BaseActivity;
import edu.graduate.biteOfTianJin.domain.entity.ShopEntity;

public class ShopActivity extends BaseActivity {

	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		setContentView(R.layout.activity_shop);
        Bundle bundle = this.getIntent().getBundleExtra("select");
		Integer id = bundle.getInt("id");
		try {
			Dao<ShopEntity, Integer> shopDao = getHelper().getDao(
					ShopEntity.class);
			ShopEntity shop = shopDao.queryForId(id);
			shop.getShopName();
		} catch (SQLException e) {
		}
	}

}
