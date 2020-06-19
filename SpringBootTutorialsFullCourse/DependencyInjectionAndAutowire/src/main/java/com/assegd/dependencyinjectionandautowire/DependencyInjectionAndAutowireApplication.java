package com.assegd.dependencyinjectionandautowire;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.ConfigurableApplicationContext;

@SpringBootApplication
public class DependencyInjectionAndAutowireApplication {
	public static void main(String[] args) {
		ConfigurableApplicationContext context =  SpringApplication.run(DependencyInjectionAndAutowireApplication.class, args);
		
		Alien alien = context.getBean(Alien.class);
		alien.show();
	}
}
