package com.fun.common;

import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.util.Properties;

public class RuntimePolicy {
	
	private static final Properties properties;
	
	static {
		properties = new Properties();
		try {
			InputStream in = RuntimePolicy.class.getResourceAsStream("/config.properties");
			properties.load(in);
		} catch (FileNotFoundException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	
	public String[] getStringArray(String name) {
		String value = (String) properties.get(name);
		if (value != null & !"".equals(value)) {
			return value.split(",");
		} else {
			return null;
		}
	}
	
	public static double[] getDoubleArray(String name) {
		String value = (String) properties.get(name);
		String[] values = null;
		if (value != null & !"".equals(value)) {
			values = value.split(",");
			double[] retValues = new double[values.length];
			for (int i = 0; i < values.length; i++) {
				retValues[i] = Double.valueOf(values[i]);
			}
			return retValues;
		} else {
			return null;
		}
	}
	
	public static int[] getIntArray(String name) {
		String value = (String) properties.get(name);
		String[] values = null;
		if (value != null & !"".equals(value)) {
			values = value.split(",");
			int[] retValues = new int[values.length];
			for (int i = 0; i < values.length; i++) {
				retValues[i] = Integer.valueOf(values[i]);
			}
			return retValues;
		} else {
			return null;
		}
	}
	
	public static double getMemberDiscount(int level) {
		double discount;
		double[] values = getDoubleArray("member.level.discount");
		if (values != null && values.length > 0) {
			discount = values[level];
		} else {
			discount = 1;
		}
		return discount;
	}
	
	public static double getTimeDiscount(int quarter) {
		int[] durations = getIntArray("time.duration");
		double[] discouts = getDoubleArray("time.discount");
		int size = durations.length + 1;
		for (int i = 0; i < size; i++) {
			if (i == 0) {
				if (0 <= quarter && quarter < durations[0] * 4) {
					return discouts[i];
				}
			} else if (i == size - 1) {
				if (quarter >= durations[i] * 4) {
					return discouts[i];
				}
			} else {
				if (durations[i - 1] * 4 >= quarter && quarter < durations[i] * 4) {
					return discouts[i];
				}
			}
		}
		return 1;
	}
	
	public static String getPanCode() {
		return "50";
	}
	
	public static int getPanCodeLength() {
		return 2;
	}
	
	public static int getPanLength() {
		return 6;
	}
	
}
