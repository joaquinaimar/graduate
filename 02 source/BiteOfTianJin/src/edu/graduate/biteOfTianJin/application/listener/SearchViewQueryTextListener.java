package edu.graduate.biteOfTianJin.application.listener;

import android.app.Activity;
import android.widget.SearchView.OnQueryTextListener;

public class SearchViewQueryTextListener implements OnQueryTextListener {

	private Activity activity = null;

	public SearchViewQueryTextListener(Activity activity) {
		this.activity = activity;
	}

	@Override
	public boolean onQueryTextChange(String newText) {
		return false;
	}

	@Override
	public boolean onQueryTextSubmit(String query) {
		return false;
	}

}
