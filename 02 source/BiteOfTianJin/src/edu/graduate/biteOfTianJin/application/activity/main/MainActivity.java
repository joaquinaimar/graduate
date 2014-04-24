package edu.graduate.biteOfTianJin.application.activity.main;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import android.os.Bundle;
import android.widget.ArrayAdapter;
import android.widget.ListView;
import android.widget.SearchView;
import android.widget.SimpleAdapter;
import android.widget.Spinner;

import com.j256.ormlite.dao.Dao;
import com.j256.ormlite.stmt.Where;

import edu.graduate.biteOfTianJin.R;
import edu.graduate.biteOfTianJin.application.activity.main.listener.ListItemClickListener;
import edu.graduate.biteOfTianJin.application.activity.main.listener.SearchViewQueryTextListener;
import edu.graduate.biteOfTianJin.application.activity.main.listener.SpinnerSelectedListener;
import edu.graduate.biteOfTianJin.basic.BaseActivity;
import edu.graduate.biteOfTianJin.domain.entity.ShopEntity;

public class MainActivity extends BaseActivity {

	private SearchView searchView = null;

	private ListView funListView = null;

	private Spinner spinnerType = null;

	public String[] types = { "", "天津菜", "川菜" };

	public String text = "";

	public String type = "";

	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		setContentView(R.layout.activity_main);

		searchView = (SearchView) findViewById(R.id.searchView);
		searchView
				.setOnQueryTextListener(new SearchViewQueryTextListener(this));
		searchView.setSubmitButtonEnabled(false);

		funListView = (ListView) this.findViewById(R.id.listResult);
		text = String.valueOf(searchView.getQuery());
		getResultList();

		spinnerType = (Spinner) findViewById(R.id.spinnerType);

		ArrayAdapter<String> adapter = new ArrayAdapter<String>(this,
				android.R.layout.simple_spinner_item, types);
		adapter.setDropDownViewResource(android.R.layout.simple_spinner_dropdown_item);
		spinnerType.setAdapter(adapter);
		spinnerType
				.setOnItemSelectedListener(new SpinnerSelectedListener(this));

	}

	public void getResultList() {

		ArrayList<HashMap<String, Object>> listItem = new ArrayList<HashMap<String, Object>>();
		try {
			Dao<ShopEntity, Integer> shopDao = getHelper().getDao(
					ShopEntity.class);
			Where<ShopEntity, Integer> where = shopDao.queryBuilder().where()
					.like("SHOP_NAME", "%" + text + "%");

			if (!"".equals(type))
				where = where.and().eq("TYPE", type);

			List<ShopEntity> shops = where.query();
			for (ShopEntity s : shops) {

				HashMap<String, Object> map = new HashMap<String, Object>();
				map.put("hiddenId", s.getId());
				map.put("textViewTitle", s.getShopName());
				map.put("textViewContent", s.getSuggest());
				listItem.add(map);
			}

			SimpleAdapter listItemAdapter = new SimpleAdapter(this, listItem,
					R.layout.result_listview, new String[] { "hiddenId",
							"textViewTitle", "textViewContent" }, new int[] {
							R.id.hiddenId, R.id.textViewTitle,
							R.id.textViewContent });
			funListView.setAdapter(listItemAdapter);
			funListView.setOnItemClickListener(new ListItemClickListener(this));
		} catch (Exception e) {
			e.printStackTrace();
		}

	}

}
