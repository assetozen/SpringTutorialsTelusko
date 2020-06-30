package com.assegd.springbootjstlpractices.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.assegd.springbootjstlpractices.model.Alien;

@Controller
public class IndexController {
	
	@RequestMapping("index")
	public ModelAndView home(Alien alien) {
		ModelAndView mView = new ModelAndView();
		mView.setViewName("index");
		mView.addObject("alien", alien);
		System.out.println("Hi " + alien.getAname());
		return mView;
	}
}
