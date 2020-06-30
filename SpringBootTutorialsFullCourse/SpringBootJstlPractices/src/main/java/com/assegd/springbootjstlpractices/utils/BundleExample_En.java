package com.assegd.springbootjstlpractices.utils;

import java.util.ListResourceBundle;

public class BundleExample_En extends ListResourceBundle {

	@Override
	protected Object[][] getContents() {
		return contents;
	}

	static final Object[][] contents = { 
			{ "count.one", "One" }, 
			{ "count.two", "Two" }, 
			{ "count.three", "Three" }, 
			{ "count.four", "Assegd" },
			{ "count.five", "Sara" },
			{ "count.six", "Noah" }, 
			};

}
