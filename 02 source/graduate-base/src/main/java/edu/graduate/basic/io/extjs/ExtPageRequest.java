package edu.graduate.basic.io.extjs;

import edu.graduate.basic.io.PageRequest;

public class ExtPageRequest extends PageRequest {

	public int getPageNumber() {
		return start / limit;
	}

	public int getPageSize() {
		return limit;
	}
}
