package edu.graduate.biteOfTianJin.application.activity.main;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import android.os.Bundle;
import android.widget.ListView;
import android.widget.SearchView;
import android.widget.SimpleAdapter;

import com.j256.ormlite.dao.Dao;

import edu.graduate.biteOfTianJin.R;
import edu.graduate.biteOfTianJin.application.activity.main.listener.ListItemClickListener;
import edu.graduate.biteOfTianJin.application.activity.main.listener.SearchViewQueryTextListener;
import edu.graduate.biteOfTianJin.basic.BaseActivity;
import edu.graduate.biteOfTianJin.domain.entity.ShopEntity;

public class MainActivity extends BaseActivity {

	private SearchView searchView = null;

	private ListView funListView = null;

	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		setContentView(R.layout.activity_main);

		searchView = (SearchView) findViewById(R.id.searchView);
		searchView
				.setOnQueryTextListener(new SearchViewQueryTextListener(this));
		searchView.setSubmitButtonEnabled(false);

		funListView = (ListView) this.findViewById(R.id.listResult);

		getResultList(String.valueOf(searchView.getQuery()));

	}

	public void getResultList(String text) {

		ArrayList<HashMap<String, Object>> listItem = new ArrayList<HashMap<String, Object>>();
		try {
			Dao<ShopEntity, Integer> shopDao = getHelper().getDao(
					ShopEntity.class);
			List<ShopEntity> shops = shopDao.queryBuilder().where()
					.like("SHOP_NAME", "%" + text + "%").query();
			for (ShopEntity s : shops) {

				HashMap<String, Object> map = new HashMap<String, Object>();
				map.put("textViewTitle", s.getShopName());
				map.put("textViewContent", s.getSuggest());
				listItem.add(map);
			}

			SimpleAdapter listItemAdapter = new SimpleAdapter(this, listItem,
					R.layout.result_listview, new String[] { "textViewTitle",
							"textViewContent" }, new int[] {
							R.id.textViewTitle, R.id.textViewContent });
			funListView.setAdapter(listItemAdapter);
			funListView.setOnItemClickListener(new ListItemClickListener(this));
		} catch (Exception e) {
			e.printStackTrace();
		}

	}

}
