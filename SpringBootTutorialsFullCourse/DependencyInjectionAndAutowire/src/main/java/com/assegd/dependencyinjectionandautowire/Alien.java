package com.assegd.dependencyinjectionandautowire;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Component;

@Component
//@Scope("prototype") :- this is used when we want to instantiate object in spring container for each instance, 
//if not used then the default is "Singleton" which will create object of Alien only once in the spring container
public class Alien {
	private int aid;
	private String aname;
	private String tech;

	@Autowired // by default searches by type but if the component has a user defined name (it should be mentioned here with @qualifier annotation)
	@Qualifier("lap1")
	private Laptop laptop;
	
	public Alien() {
		super();
		System.out.println("Alien object created");
	}
	public int getAid() {
		return aid;
	}
	public void setAid(int aid) {
		this.aid = aid;
	}
	public String getAname() {
		return aname;
	}
	public void setAname(String aname) {
		this.aname = aname;
	}
	public String getTech() {
		return tech;
	}
	public void setTech(String tech) {
		this.tech = tech;
	}
	
	
	
	public Laptop getLaptop() {
		return laptop;
	}
	public void setLaptop(Laptop laptop) {
		this.laptop = laptop;
	}
	public void show() {
		System.out.println("in Alien Show method");
		laptop.compile();
	}

}
