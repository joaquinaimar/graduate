package edu.graduate.biteOfTianJin.application.activity.main.listener;

import android.app.Activity;
import android.os.Bundle;
import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.TextView;
import edu.graduate.biteOfTianJin.R;
import edu.graduate.biteOfTianJin.application.activity.shop.ShopActivity;
import edu.graduate.biteOfTianJin.basic.BaseActivity;

public class ListItemClickListener implements OnItemClickListener {

	private Activity activity = null;

	public ListItemClickListener(Activity activity) {
		this.activity = activity;
	}

	@Override
	public void onItemClick(AdapterView<?> parent, View view, int position,
			long id) {
		Integer selectId = Integer.valueOf(((TextView) view
				.findViewById(R.id.hiddenId)).getText().toString());
		Bundle bundle = new Bundle();
		bundle.putInt("id", selectId);
		((BaseActivity) activity).redirectTo(ShopActivity.class, "select",
				bundle);

	}

}
