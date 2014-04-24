package com.fun.common;

import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

public class Constant {

	
	public static final String BLANK = "";
	
	public static final String ETC = " ......";
	
	public static final String ZERO = "0";
	
	public static final String DATE_FORMAT = "yyyy/MM/dd";
	
	public static final String UTF_8 = "utf-8";
	
	public static final String USER_INFO = "user_info";
	
	public static final String SUCCESS = "success";
	
	public static final String SUCCESS_P = "success_p";
	
	public static final String DELETE = "delete";
	
	public static final String FAIL = "fail";
	
	public static final String INPUT = "input";
	
	public static final String TITLE = "title";
	
	public static final String AUTHOR = "author";
	
	public static final String SUBJECT = "subject";
	
	public static final String CHECK_OK = "check_ok";
	
	public static final String CHECK_ER = "check_er";
	
	public static final String IMG = "Img";
	
	public static final String TEXT = "Text";
	
	public static final String SEPARATE = "Separate";
	
	public static final String GUESTBOOK = "Guestbook";
	
	public static final int ADMIN = 1;
	
	public static final int USER = 2;
	
	public static final int TOURIST = 3;
	
	public static final int ONLY = 0;
	
	public static final int HAVE = 1;
	
	public static final String ADM = "admin";
	
	public static final String ADMPASSWORD = "111111";
	
	public static final int MONTH = 3600 * 24 * 30;
	
	public static final int MAX_RESULTS = 6;
	
	public static final String COUNT = "count";
	
	public static final String CURRENT_PAGE = "currentPage";
	
	public static final String FIRST_PAGE = "1";
	
	public static final int FIRST_GROUP = 1;
	
	public static final String REQUEST_URI = "javax.servlet.forward.request_uri";
	
	public static final String[] AFTER_GROUP_PAGE = {"一", "二", "三", "四", "五", "六", "七", "八", "九"};
	
	public static final String[] MONTHS = {"一", "二", "三", "四", "五", "六", "七", "八", "九", "十", "十一", "十二"};
	
	public static final String ERROR_NAME = "name";
	
	public static final String ERROR_PASSWORD = "password";
	
	public static final String ERROR_EMAIL = "email";
	
	public static final String ERROR_PASSWORD_FAIL = "passwordFail";
	
	public static final String ERROR_ADMIN = "admin";
	
	private static Date DEFAULT_END_DATE;
	
	static {
		DateFormat format = new SimpleDateFormat(Constant.DATE_FORMAT);
		try {
			DEFAULT_END_DATE = format.parse("9999/12/31");
		} catch (ParseException e) {
			e.printStackTrace();
		}
	}
	
	public static Date getDefaultEndDate() {
		return DEFAULT_END_DATE;
	}

}
