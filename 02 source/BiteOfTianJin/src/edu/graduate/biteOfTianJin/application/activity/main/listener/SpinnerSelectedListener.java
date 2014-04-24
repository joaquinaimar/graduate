package edu.graduate.biteOfTianJin.application.activity.main.listener;

import edu.graduate.biteOfTianJin.application.activity.main.MainActivity;
import android.app.Activity;
import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemSelectedListener;

public class SpinnerSelectedListener implements OnItemSelectedListener {

	private Activity activity = null;

	public SpinnerSelectedListener(Activity activity) {
		this.activity = activity;
	}

	@Override
	public void onItemSelected(AdapterView<?> parent, View view, int position,
			long id) {
		((MainActivity) this.activity).type = ((MainActivity) this.activity).types[position];
		((MainActivity) this.activity).getResultList();
	}

	@Override
	public void onNothingSelected(AdapterView<?> parent) {
		((MainActivity) this.activity).type = "";
		((MainActivity) this.activity).getResultList();
	}

}
