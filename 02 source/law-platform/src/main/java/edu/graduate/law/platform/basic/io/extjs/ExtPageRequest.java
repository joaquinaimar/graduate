package edu.graduate.law.platform.basic.io.extjs;

import edu.graduate.law.platform.basic.io.PageRequest;

public class ExtPageRequest extends PageRequest {

	public int getPageNumber() {
		return start / limit;
	}

	public int getPageSize() {
		return limit;
	}
}
