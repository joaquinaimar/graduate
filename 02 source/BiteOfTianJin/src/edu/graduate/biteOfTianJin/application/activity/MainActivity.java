package edu.graduate.biteOfTianJin.application.activity;

import java.util.ArrayList;
import java.util.HashMap;

import android.app.Activity;
import android.os.Bundle;
import android.view.Menu;
import android.view.MenuItem;
import android.widget.ListView;
import android.widget.SearchView;
import android.widget.SimpleAdapter;
import edu.graduate.biteOfTianJin.R;
import edu.graduate.biteOfTianJin.application.listener.SearchViewQueryTextListener;
import edu.graduate.biteOfTianJin.basic.ExitApplication;

public class MainActivity extends Activity {

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

		funListView = (ListView) findViewById(R.id.listResult);

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

	private void getResultList() {

		ArrayList<HashMap<String, Object>> listItem = new ArrayList<HashMap<String, Object>>();
		for (int i = 0; i < 10; i++) {
			HashMap<String, Object> map = new HashMap<String, Object>();
			map.put("listContent", i + "");
			map.put("listButton", "È·¶¨");
			listItem.add(map);
		}

		SimpleAdapter listItemAdapter = new SimpleAdapter(this, listItem,
				R.layout.result_listview, new String[] { "listContent",
						"listButton" }, new int[] { R.id.listContent,
						R.id.listButton });
		funListView.setAdapter(listItemAdapter);

	}
}
