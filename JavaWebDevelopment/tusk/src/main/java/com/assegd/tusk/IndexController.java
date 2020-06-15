package com.assegd.tusk;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.assegd.tusk.dao.FeedbackDao;
import com.assegd.tusk.entity.Feedback;

@Controller
public class IndexController {
	
	@Autowired
	FeedbackDao fdao;
	
	Feedback feedback;
	
	@RequestMapping("/")
	public String home() {
		return "index.jsp";
	}
	
	@RequestMapping("/feedback.htm")
	public String feedback() {
		return "feedback.jsp";
	}
	
	//public String addFeedback(@RequestParam("name") String name,@RequestParam("email") String email,@RequestParam("reg") String reg, @RequestParam("code") String code, @RequestParam("rating") int rating){
	//feedback = new Feedback(name, email, reg, code, rating);
	
	@RequestMapping("/addFeedback")
	public String addFeedback(@ModelAttribute("feedback") Feedback feedback) {
		fdao.addFeedback(feedback);
		return "welcome.jsp";
	}
	
	
	@RequestMapping("/getFeedbacks.htm")
	public ModelAndView getFeedback() {
		
		ModelAndView mView = new ModelAndView("feedbacks.jsp");
		mView.addObject("feedbacks", fdao.getFeedbacks());
		
		return mView;
	}

}
