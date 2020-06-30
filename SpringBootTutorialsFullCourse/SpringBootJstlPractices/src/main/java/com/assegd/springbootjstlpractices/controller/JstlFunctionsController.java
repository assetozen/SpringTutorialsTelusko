package com.assegd.springbootjstlpractices.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class JstlFunctionsController {
	
	@RequestMapping("containsAndContainsIgnoreCaseTag")
	public ModelAndView containsAndContainsIgnoreCaseTag() {return new ModelAndView("containsandcontainsignorecasetag");}

	@RequestMapping("escapeXmlTag")
	public ModelAndView escapeXmlTag() {return new ModelAndView("escapexmltag");}
	
	@RequestMapping("startsWithAndendsWithTag")
	public ModelAndView startsWithAndendsWithTag() {return new ModelAndView("startswithAndendswithtag");}
	
	@RequestMapping("indexOfAndJoinTag")
	public ModelAndView indexOfAndJoinTag() {return new ModelAndView("indexofandjointag");}
	
	

	@RequestMapping("lengthAndReplaceTag")
	public ModelAndView lengthAndReplaceTag() {return new ModelAndView("lengthandreplacetag");}
	
	
	@RequestMapping("substringAndSubstringAfterAndSubstringBeforeTag")
	public ModelAndView substringAndSubstringAfterAndSubstringBeforeTag() {return new ModelAndView("substringandsubstringafterandsubstringbeforetag");}
	
	@RequestMapping("toLowerCaseAndToUpperCaseAndTrimTag")
	public ModelAndView toLowerCaseAndToUpperCaseAndTrimTag() {return new ModelAndView("tolowercaseandtouppercaseandtrimtag");}
}
