package edu.graduate.biteOfTianJin.application.activity.main;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import android.os.Bundle;
import android.view.Menu;
import android.view.MenuItem;
import android.widget.ListView;
import android.widget.SearchView;
import android.widget.SimpleAdapter;

import com.j256.ormlite.android.apptools.OrmLiteBaseActivity;
import com.j256.ormlite.dao.Dao;

import edu.graduate.biteOfTianJin.R;
import edu.graduate.biteOfTianJin.application.activity.main.listener.ListItemClickListener;
import edu.graduate.biteOfTianJin.application.activity.main.listener.SearchViewQueryTextListener;
import edu.graduate.biteOfTianJin.basic.ExitApplication;
import edu.graduate.biteOfTianJin.basic.SqliteHelper;
import edu.graduate.biteOfTianJin.domain.entity.Shop;

public class MainActivity extends OrmLiteBaseActivity<SqliteHelper> {

	private SearchView searchView = null;

	private ListView funListView = null;

	private Dao<Shop, Integer> shopDao = null;

	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		setContentView(R.layout.activity_main);

		searchView = (SearchView) findViewById(R.id.searchView);
		searchView
				.setOnQueryTextListener(new SearchViewQueryTextListener(this));
		searchView.setSubmitButtonEnabled(false);

		funListView = (ListView) this.findViewById(R.id.listResult);

		try {
			shopDao = getHelper().getHelloDataDao();
			Shop shop = new Shop();
			for (int i = 0; i < 10; i++) {
				shop.setName("name" + i);
				shop.setSuggest("suggest" + i);
				shopDao.create(shop);
			}

		} catch (SQLException e) {
			e.printStackTrace();
		}

		getResultList();

	}

	@Override
	public boolean onCreateOptionsMenu(Menu menu) {
		getMenuInflater().inflate(R.menu.main, menu);
		return true;
	}

	@Override
	public boolean onOptionsItemSelected(MenuItem item) {
		switch (item.getItemId()) {
		case R.id.action_exit:
			ExitApplication.getInstance().exit();
			break;
		}
		return super.onOptionsItemSelected(item);
	}

	public void getResultList() {

		ArrayList<HashMap<String, Object>> listItem = new ArrayList<HashMap<String, Object>>();
		try {
			List<Shop> shops = shopDao.queryForAll();
			for (Shop s : shops) {

				HashMap<String, Object> map = new HashMap<String, Object>();
				map.put("textViewTitle", s.getName());
				map.put("textViewContent", s.getSuggest());
				listItem.add(map);
			}

			SimpleAdapter listItemAdapter = new SimpleAdapter(this, listItem,
					R.layout.result_listview, new String[] { "textViewTitle",
							"textViewContent" }, new int[] {
							R.id.textViewTitle, R.id.textViewContent });
			funListView.setAdapter(listItemAdapter);
			funListView.setOnItemClickListener(new ListItemClickListener(this));
		} catch (SQLException e) {
		}

	}

}
