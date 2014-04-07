package edu.graduate.biteOfTianJin.application.activity;

import android.app.Activity;
import android.os.Bundle;
import android.view.Menu;
import android.view.MenuItem;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.SearchView;
import edu.graduate.biteOfTianJin.R;
import edu.graduate.biteOfTianJin.application.listener.SearchViewQueryTextListener;
import edu.graduate.biteOfTianJin.basic.ExitApplication;

public class MainActivity extends Activity {

	private SearchView searchView = null;

	private LinearLayout funListView = null;

	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		setContentView(R.layout.activity_main);

		searchView = (SearchView) findViewById(R.id.searchView);
		searchView
				.setOnQueryTextListener(new SearchViewQueryTextListener(this));
		searchView.setSubmitButtonEnabled(false);

		funListView = (LinearLayout) findViewById(R.id.listResult);
		initGridView();
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

	private void initGridView() {
		int ii = 1008601;
		for (int i = 1; i <= 19; i++) {
			Button btn = new Button(this);
			btn.setWidth(500);
			btn.setText(String.valueOf(ii));
			btn.setId(ii++);
			funListView.addView(btn);
		}

	}

}
