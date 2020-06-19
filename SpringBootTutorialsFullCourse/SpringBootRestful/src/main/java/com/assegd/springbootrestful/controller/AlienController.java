package com.assegd.springbootrestful.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.assegd.springbootrestful.Alien;
import com.assegd.springbootrestful.dao.AlienRepo;

@Controller
public class AlienController {

	@Autowired
	AlienRepo repo;

	@RequestMapping("/")
	public String home() {
		return "home";
	}

	@RequestMapping("/addAlien")
	public String addAlien(Alien alien) {
		repo.save(alien);
		return "home";
	}

	@RequestMapping("/getAlien")
	public ModelAndView getAlien(@RequestParam("aid") int aid) {
		ModelAndView mView = new ModelAndView();
		Alien alien = repo.findById(aid).orElse(new Alien());

		mView.setViewName("alien");
		mView.addObject("alien", alien);

		return mView;
	}

	@RequestMapping("/getAlienByTech")
	public ModelAndView getAlienTech(@RequestParam("tech") String tech) {
		ModelAndView mView = new ModelAndView();
		List<Alien> aliens = repo.findByTech(tech);

		System.out.println("Aliens with Java tech: " + repo.findByTech("Java"));
		System.out.println("Aliens with id greater than 102: " + repo.findByAidGreaterThan(102));
		System.out.println("Aliens with Java tech and sorted by aname: " + repo.findByTechSorted("Java"));

		mView.setViewName("aliens");
		mView.addObject("aliens", aliens);

		return mView;
	}
}
