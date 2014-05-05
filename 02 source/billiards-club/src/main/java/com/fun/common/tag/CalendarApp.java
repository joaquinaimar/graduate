package com.fun.common.tag;

import java.io.IOException;
import java.io.Writer;
import java.util.Calendar;
import java.util.GregorianCalendar;

import org.apache.struts2.components.Component;

import com.fun.common.Constant;
import com.opensymphony.xwork2.util.ValueStack;

public class CalendarApp extends Component {

	private String width;

	private String height;

	private String color;

	public CalendarApp(ValueStack stack) {
		super(stack);
	}

	@Override
	public boolean start(Writer writer) {
		boolean result = super.start(writer);
		StringBuffer stringBuffer = new StringBuffer();
		GregorianCalendar gc = new GregorianCalendar();
		int today = gc.get(Calendar.DAY_OF_MONTH);
		int month = gc.get(Calendar.MONTH);
		int year = gc.get(Calendar.YEAR);
		// init a month days
		String days[] = new String[42];
		for (int i = 0; i < 42; i++) {
			days[i] = Constant.BLANK;
		}
		Calendar calendar = Calendar.getInstance();
		calendar.clear();
		calendar.set(Calendar.YEAR, year);
		calendar.set(Calendar.MONTH, month);
		calendar.setFirstDayOfWeek(Calendar.SUNDAY);
		calendar.set(Calendar.DAY_OF_MONTH, 1);
		int firstWeek = calendar.get(Calendar.DAY_OF_WEEK) - 1;
		int maxDays = calendar.getActualMaximum(Calendar.DAY_OF_MONTH);
		// set a month days
		for (int i = 0; i < maxDays; i++) {
			days[firstWeek + i] = String.valueOf(i + 1);
		}
		// title
		stringBuffer.append("<table border='0' width='168' height='81'>");
		stringBuffer.append("<tr><td colspan='7' align='center' height='"
				+ height + "'>" + year + "&nbsp;年" + (month + 1) + "&nbsp;月"
				+ today + "&nbsp;日</td></tr>");
		stringBuffer.append("<tr><th width='" + width + "' height='" + height
				+ "'><font color='" + color + "'>日</font></th>");
		stringBuffer.append("<th width='" + width + "' height='" + height
				+ "'>一</th><th width='" + width + "' height='" + height
				+ "'>二</th>");
		stringBuffer.append("<th width='" + width + "' height='" + height
				+ "'>三</th><th width='" + width + "' height='" + height
				+ "'>四</th>");
		stringBuffer.append("<th width='" + width + "' height='" + height
				+ "'>五</th><th width='" + width + "' height='" + height
				+ "'><font color='" + color + "'>六</font></th></tr>");
		// detail
		for (int i = 0; i < 6; i++) {
			stringBuffer.append("<tr>");
			for (int j = i * 7; j < (i + 1) * 7; j++) {
				stringBuffer.append("<td width='" + width + "' height='"
						+ height + "' valign='middle' align='center'>");
				if ((j - firstWeek + 1) == today) {
					stringBuffer.append("<font color='" + color + "'>"
							+ days[j] + "</font>");
				} else {
					stringBuffer.append(days[j]);
				}
				stringBuffer.append("</td>");
			}
			stringBuffer.append("</tr>");
		}
		stringBuffer.append("</table>");
		try {
			writer.write(stringBuffer.toString());
		} catch (IOException e) {
			e.printStackTrace();
		}
		return result;

	}

	public void setWidth(String width) {
		this.width = width;
	}

	public void setHeight(String height) {
		this.height = height;
	}

	public void setColor(String color) {
		this.color = color;
	}

}
