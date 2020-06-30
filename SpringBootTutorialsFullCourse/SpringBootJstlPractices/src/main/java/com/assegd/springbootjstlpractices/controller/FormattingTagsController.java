package com.assegd.springbootjstlpractices.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class FormattingTagsController {

	@RequestMapping("formatNumberTag")
	public ModelAndView formatNumberTag() {return new ModelAndView("formatnumbertag");}
	
	@RequestMapping("parseNumberTag")
	public ModelAndView parseNumberTag() {return new ModelAndView("parsenumbertag");}
	
	@RequestMapping("formatDateTag")
	public ModelAndView formatDateTag() {return new ModelAndView("formatdatetag");}
	
	@RequestMapping("parseDateTag")
	public ModelAndView parseDateTag() {return new ModelAndView("parsedatetag");}
	
	
	@RequestMapping("bundleTag")
	public ModelAndView bundleTag() {return new ModelAndView("bundletag");}
	
	@RequestMapping("bundleTagForManyLocale")
	public ModelAndView bundleTagForManyLocale() {return new ModelAndView("bundletagformanylocale");}
	
	
	@RequestMapping("timeZoneTag")
	public ModelAndView timeZoneTag() {return new ModelAndView("timezonetag");}
	

	@RequestMapping("messageTag")
	public ModelAndView messageTag() {return new ModelAndView("messagetag");}
	

	@RequestMapping("requestEncodingTag")
	public ModelAndView requestEncodingTag() {return new ModelAndView("requestencodingtag");}
}
