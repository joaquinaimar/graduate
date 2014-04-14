package edu.graduate.biteOfTianJin.application.activity.main.listener;

import android.app.Activity;
import android.widget.SearchView.OnQueryTextListener;
import edu.graduate.biteOfTianJin.application.activity.main.MainActivity;

public class SearchViewQueryTextListener implements OnQueryTextListener {

	private Activity activity = null;

	public SearchViewQueryTextListener(Activity activity) {
		this.activity = activity;
	}

	@Override
	public boolean onQueryTextChange(String text) {
		((MainActivity) this.activity).getResultList(text);
		return false;
	}

	@Override
	public boolean onQueryTextSubmit(String query) {
		return false;
	}

}
