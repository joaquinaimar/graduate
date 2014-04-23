package edu.graduate.biteOfTianJin.application.activity.shop;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import android.os.Bundle;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Button;
import android.widget.EditText;
import android.widget.ListView;
import android.widget.SimpleAdapter;
import android.widget.TextView;

import com.j256.ormlite.dao.Dao;

import edu.graduate.biteOfTianJin.R;
import edu.graduate.biteOfTianJin.application.activity.main.MainActivity;
import edu.graduate.biteOfTianJin.basic.BaseActivity;
import edu.graduate.biteOfTianJin.basic.SessionStore;
import edu.graduate.biteOfTianJin.domain.entity.ReviewEntity;
import edu.graduate.biteOfTianJin.domain.entity.ShopEntity;

public class ShopActivity extends BaseActivity {

	private Button btnReview = null;

	private EditText editTextReview = null;

	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		setContentView(R.layout.activity_shop);
		Bundle bundle = this.getIntent().getBundleExtra("select");
		final Integer id = bundle.getInt("id");
		getShopInfo(id);
		getReviewInfo(id);
		getReviewList(id);

		this.editTextReview = (EditText) this.findViewById(R.id.editTextReview);

		this.btnReview = (Button) this.findViewById(R.id.btnReview);
		this.btnReview.setOnClickListener(new OnClickListener() {
			public void onClick(View v) {
				doReview(id);
			}
		});

	}

	private void getShopInfo(Integer id) {

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

	private void getReviewInfo(Integer id) {
		if (null == SessionStore.userid || "".equals(SessionStore.userid)) {
			super.findViewById(R.id.textViewMessage)
					.setVisibility(View.VISIBLE);
			super.findViewById(R.id.editTextReview).setVisibility(View.GONE);
			super.findViewById(R.id.btnReview).setVisibility(View.GONE);
		} else {
			super.findViewById(R.id.textViewMessage).setVisibility(View.GONE);
			super.findViewById(R.id.editTextReview).setVisibility(View.VISIBLE);
			super.findViewById(R.id.btnReview).setVisibility(View.VISIBLE);
		}
	}

	private void getReviewList(Integer id) {

		ListView funListView = (ListView) this.findViewById(R.id.listReview);

		ArrayList<HashMap<String, Object>> listItem = new ArrayList<HashMap<String, Object>>();
		try {
			Dao<ReviewEntity, Integer> reviewDao = getHelper().getDao(
					ReviewEntity.class);
			List<ReviewEntity> reviews = reviewDao.queryBuilder().where()
					.eq("SHOP_ID", id).query();
			for (ReviewEntity r : reviews) {

				HashMap<String, Object> map = new HashMap<String, Object>();
				map.put("textViewReviewUser", r.getUserId());
				map.put("textViewReviewContent", r.getContent());
				listItem.add(map);
			}

			SimpleAdapter listItemAdapter = new SimpleAdapter(this, listItem,
					R.layout.review_listview, new String[] {
							"textViewReviewUser", "textViewReviewContent" },
					new int[] { R.id.textViewReviewUser,
							R.id.textViewReviewContent });
			funListView.setAdapter(listItemAdapter);
		} catch (Exception e) {
			e.printStackTrace();
		}

	}

	private void doReview(Integer id) {
		try {
			Dao<ReviewEntity, Integer> reviewDao = getHelper().getDao(
					ReviewEntity.class);

			ReviewEntity review = new ReviewEntity();
			review.setShopId(String.valueOf(id));
			review.setUserId(String.valueOf(SessionStore.userid));
			review.setContent(editTextReview.getText().toString());
			reviewDao.create(review);
			redirectTo(MainActivity.class);
		} catch (SQLException e) {
		}
	}

}
