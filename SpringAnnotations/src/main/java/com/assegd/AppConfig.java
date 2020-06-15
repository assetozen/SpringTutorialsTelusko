package com.assegd;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;

/***
 * This class is created when we are not using "Component" annotation on classes which we want to autowire
 * - when we are using Component annotation this class will be commented(bean creation parts)
 */
@Configuration
@ComponentScan(basePackages = "com.assegd")
public class AppConfig {
/**
    @Bean
    public Samsung getPhone(){
        return new Samsung();
    }

    @Bean
    public MobileProcessor getProcessor(){
        return new SnapDragon();
    }

*/
}
