package com.assegd.springbootjstlpractices.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class SqlTagsController {

	@RequestMapping("setDataSourceTag")
	public ModelAndView setDataSourceTag() {return new ModelAndView("setdatasourcetag");}
	
	@RequestMapping("sqlUpdateTag")
	public ModelAndView sqlUpdateTag() {return new ModelAndView("sqlupdatetag");}
	
	@RequestMapping("sqlParamTag")
	public ModelAndView sqlParamTag() {return new ModelAndView("sqlparamtag");}
	
	@RequestMapping("sqlTransactionTag")
	public ModelAndView sqlTransactionTag() {return new ModelAndView("sqltransactiontag");}
}
