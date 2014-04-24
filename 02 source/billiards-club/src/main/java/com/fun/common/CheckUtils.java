package com.fun.common;

import java.util.regex.Matcher;
import java.util.regex.Pattern;

import com.fun.common.Constant;

public class CheckUtils {
	private CheckUtils() {

	}

	public static boolean requirdTrim(String arg) {
		
		if (arg == null) {
			return false;
		} else {
			if (Constant.BLANK.equals(arg.trim())) {
				return false;
			} else {
				return true;
			}
		}
	}

	public static boolean checkStringLength(String arg, int length) {
		if (arg.length() > length) {
			return false;
		} else {
			return true;
		}
	}

	public static boolean emailFormat(String email) {
		final Pattern pattern = Pattern
				.compile("^([a-z0-9A-Z]+[-|\\.]?)+[a-z0-9A-Z]@([a-z0-9A-Z]+(-[a-z0-9A-Z]+)?\\.)+[a-zA-Z]{2,}$");
		final Matcher mat = pattern.matcher(email);
		if (!mat.find()) {
			return false;
		} else {
			return true;
		}
	}
}
