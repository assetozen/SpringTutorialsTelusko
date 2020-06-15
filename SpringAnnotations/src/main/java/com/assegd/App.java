package com.assegd;

import org.springframework.context.ApplicationContext;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

/**---------------------- Spring Annotation implemented
 *  - MobileProcessor interface created,
 *  - SnapDragon class created which implements MobileProcessor interface
 *   - Samsung class created,
 *          - in its config method, object of mobile processor called with its process method
 *   - AppConfig class created
 *          - here all the Beans are created for each class
 *  - in App class object of
 *          - samsung object initialized and called its config method
 *                  - internally to use the mobileprocessor objets, we used AutoWired Annotation in the Samsung class where the object of
 *                  mobileprocessor is defined
 *
 */
public class App 
{
    public static void main( String[] args )
    {
        ApplicationContext factory = new AnnotationConfigApplicationContext(AppConfig.class);
        Samsung s7 = factory.getBean(Samsung.class);
        s7.config();
    }
}
