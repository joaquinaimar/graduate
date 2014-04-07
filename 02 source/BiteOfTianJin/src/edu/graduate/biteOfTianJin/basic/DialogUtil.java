package edu.graduate.biteOfTianJin.basic;

import android.app.Activity;
import android.app.AlertDialog;
import android.app.AlertDialog.Builder;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import edu.graduate.biteOfTianJin.R;

public class DialogUtil {

	public static void alert(Activity activity, String message) {
		Builder dialog = new AlertDialog.Builder(activity);

		dialog.setTitle(message);
		dialog.setIcon(android.R.drawable.ic_dialog_info);
		dialog.setPositiveButton(activity.getString(R.string.confirm),
				new OnClickListener() {
					@Override
					public void onClick(DialogInterface dialog, int which) {
						dialog.dismiss();
					}
				});

		dialog.show();
	}
}
