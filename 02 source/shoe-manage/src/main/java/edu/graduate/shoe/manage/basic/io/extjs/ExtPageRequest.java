package edu.graduate.shoe.manage.basic.io.extjs;

import edu.graduate.shoe.manage.basic.io.PageRequest;

public class ExtPageRequest extends PageRequest {

	public int getPageNumber() {
		return start / limit;
	}

	public int getPageSize() {
		return limit;
	}
}
