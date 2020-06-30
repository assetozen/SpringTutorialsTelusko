package com.assegd.springbootjstlpractices.utils;

import java.util.ListResourceBundle;

public class BundleExample_es_Es extends ListResourceBundle {

	@Override
	protected Object[][] getContents() {
		return contents;
	}

	static final Object[][] contents = { 
			{ "count.one", "Uno" }, 
			{ "count.two", "Dou" }, 
			{ "count.three", "Tres" }, 
			{ "count.four", "Assegd" },
			{ "count.five", "Sara" },
			{ "count.six", "Noah" }, 
			};

}
