package com.assegd.springmvc.config;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.view.InternalResourceViewResolver;

/**
 * This will be working as the servlet Dispatcher
 * @author aAsfaw
 *
 */
@Configuration
@ComponentScan({"com.assegd.springmvc"})
public class SpringMvcTutorialConfig {
	
	@Bean
	public InternalResourceViewResolver viewResolver() {
		InternalResourceViewResolver vResolver = new InternalResourceViewResolver();
		vResolver.setPrefix("/WEB-INF/");
		vResolver.setSuffix(".jsp");
		return vResolver;
	}
}
