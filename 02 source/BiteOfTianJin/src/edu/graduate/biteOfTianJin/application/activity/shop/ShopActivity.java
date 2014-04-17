package edu.graduate.biteOfTianJin.application.activity.shop;

import java.sql.SQLException;

import android.os.Bundle;
import android.widget.TextView;

import com.j256.ormlite.dao.Dao;

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
			((TextView) super.findViewById(R.id.textViewShopNameContent))
					.setText(shop.getShopName());
			((TextView) super.findViewById(R.id.textViewSuggestContent))
					.setText(shop.getSuggest());
			((TextView) super.findViewById(R.id.textViewTypeContent))
					.setText(shop.getType());
			((TextView) super.findViewById(R.id.textViewPhoneNoContent))
					.setText(shop.getPhoneNo());
			((TextView) super.findViewById(R.id.textViewAveragePriceContent))
					.setText(shop.getAveragePrice().toString());
			((TextView) super.findViewById(R.id.textViewAddressContent))
					.setText(shop.getAddress());

		} catch (SQLException e) {
		}
	}

}
