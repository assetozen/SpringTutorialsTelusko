package com.assegd.springbootjpa.dao;

import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;

import com.assegd.springbootjpa.Alien;

public interface AlienRepo extends CrudRepository<Alien, Integer>{
	public List<Alien> findByTech(String tech);
	
	public List<Alien> findByAidGreaterThan(int aid);
	
	@Query("from Alien where tech=?1 order by aname")
	List<Alien> findByTechSorted(String tech);
}
