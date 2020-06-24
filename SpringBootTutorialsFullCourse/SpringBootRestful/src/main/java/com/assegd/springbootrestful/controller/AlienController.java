package com.assegd.springbootrestful.controller;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.assegd.springbootrestful.Alien;
import com.assegd.springbootrestful.dao.AlienRepo;

@RestController
public class AlienController {

	@Autowired
	AlienRepo repo;

	@RequestMapping("/")
	public String home() {
		return "home";
	}

	@PostMapping(path = "/alien", consumes = { "application/json" })
	public Alien addAlien(@RequestBody Alien alien) {
		repo.save(alien);
		return alien;

	}

	@GetMapping(path = "/aliens", produces = { "application/xml", "application/json" })
	public List<Alien> getAliens() {
		return repo.findAll();
	}

	@GetMapping("/aliens/{aid}")
	public Optional<Alien> getAlien(@PathVariable("aid") int aid) {
		return repo.findById(aid);
	}

	@DeleteMapping("/alien/{aid}")
	public String deleteAlien(@PathVariable("aid") int aid) {
		Alien alienTobeDeleted = repo.findById(aid).get();
		if (alienTobeDeleted != null) {
			repo.delete(alienTobeDeleted);
			return "Successfuly deleted!!";
		}

		return "Data with an id of " + aid + " can not be found";
	}

	@PutMapping(path = "/alien", consumes = { "application/json" })
	public Alien updateAlien(@RequestBody Alien alien) {
		repo.save(alien);
		return alien;

	}

	@GetMapping("/getAlienByTech")
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
