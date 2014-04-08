package edu.graduate.biteOfTianJin.application.activity.main.listener;

import java.util.ArrayList;
import java.util.HashMap;

import android.app.Activity;
import android.widget.ListView;
import android.widget.SearchView.OnQueryTextListener;
import android.widget.SimpleAdapter;
import edu.graduate.biteOfTianJin.R;

public class SearchViewQueryTextListener implements OnQueryTextListener {

	private Activity activity = null;

	private ListView funListView = null;

	public SearchViewQueryTextListener(Activity activity) {
		this.activity = activity;
		funListView = (ListView) activity.findViewById(R.id.listResult);
	}

	@Override
	public boolean onQueryTextChange(String newText) {
		getResultList();
		return false;
	}

	@Override
	public boolean onQueryTextSubmit(String query) {
		return false;
	}

	private void getResultList() {

		ArrayList<HashMap<String, Object>> listItem = new ArrayList<HashMap<String, Object>>();
		for (int i = 0; i < 10; i++) {
			HashMap<String, Object> map = new HashMap<String, Object>();
			map.put("textViewTitle", i + "");
			map.put("textViewContent", "的萨大声大嵩岛");
			listItem.add(map);
		}

		SimpleAdapter listItemAdapter = new SimpleAdapter(this.activity,
				listItem, R.layout.result_listview, new String[] {
						"textViewTitle", "textViewContent" }, new int[] {
						R.id.textViewTitle, R.id.textViewContent });
		funListView.setAdapter(listItemAdapter);
		funListView.setOnItemClickListener(new ListItemClickListener(
				this.activity));

	}

}
