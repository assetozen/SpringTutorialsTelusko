package com.assegd.webapp;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class HomeController {

	@RequestMapping("home")
	public ModelAndView home(Alien alien) {
		ModelAndView mView = new ModelAndView();
		mView.setViewName("home");
		mView.addObject("alien", alien);
		System.out.println("Hi " + alien.getAname());
		return mView;
	}
	
	/** Simply using http servlets and jsp*/
	/**
	@RequestMapping("home")
	public String home(HttpServletRequest req) {
		HttpSession session = req.getSession();
		String name = req.getParameter("name");
		session.setAttribute("name", name);
		System.out.println("Hi " + name);
		return "home";
	}
	 */
}
