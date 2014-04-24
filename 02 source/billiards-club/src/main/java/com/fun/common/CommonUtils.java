package com.fun.common;

public class CommonUtils {

	public static String padLeft(String value, char filler, int length) {
		if (value != null) {
			StringBuffer buffer = new StringBuffer(value.length() + length);
			int fillerLength = length - value.length();
			for (int i = 0; i < fillerLength; i++) {
				buffer.append(filler);
			}
			buffer.append(value);
			return buffer.toString();
		} else {
			return Constant.BLANK;
		}
	}
}
