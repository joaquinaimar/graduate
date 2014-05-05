package com.fun.common.tag;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts2.components.Component;
import org.apache.struts2.views.jsp.ComponentTagSupport;

import com.opensymphony.xwork2.util.ValueStack;

public class CalendarAppTag extends ComponentTagSupport{

	private static final long serialVersionUID = 1L;

	private String width;

	private String height;

	private String color;
	
	@Override
	public Component getBean(ValueStack stack, HttpServletRequest request,
			HttpServletResponse response) {
		return new CalendarApp(stack);
	}

	@Override
	protected void populateParams() {
		CalendarApp calendar = (CalendarApp) component;
		calendar.setWidth(width);
		calendar.setHeight(height);
		calendar.setColor(color);
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
