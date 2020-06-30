package com.assegd.springbootjstlpractices.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class CoreTagsController {
	@RequestMapping("setTag")
	public ModelAndView setTag() {return new ModelAndView("settag");}
	
	@RequestMapping("removeTag")
	public ModelAndView removeTag() {return new ModelAndView("removetag");}
	
	@RequestMapping("catchTag")
	public ModelAndView catchTag() {return new ModelAndView("catchtag");}
	
	@RequestMapping("ifTag")
	public ModelAndView ifTag() {return new ModelAndView("iftag");}
	
	@RequestMapping("chooseTag")
	public ModelAndView chooseTag() {return new ModelAndView("choosetag");}
	
	@RequestMapping("importTag")
	public ModelAndView importTag() {return new ModelAndView("importtag");}
	
	@RequestMapping("forEachForTokensTag")
	public ModelAndView forEachForTokensTag() {return new ModelAndView("foreachfortokenstag");}
	
	@RequestMapping("paramTag")
	public ModelAndView paramTag() {return new ModelAndView("paramtag");}
	
	@RequestMapping("redirectTag")
	public ModelAndView redirectTag() {return new ModelAndView("redirecttag");}
	
	@RequestMapping("urlTag")
	public ModelAndView urlTag() {return new ModelAndView("urltag");}


}
