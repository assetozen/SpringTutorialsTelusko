package com.assegd.springbootjstlpractices.config;

/** this class has been commented out because i have tried to implement view resolvers to put the jsps in different folders under webapp but 
 * couldn't manage to do that so i am sticking to the applicaion.properties*/

/*@Configuration
@EnableWebMvc
@ComponentScan*/
public class ViewResolverConfig/* extends WebMvcConfigurationSupport*/{/*

	@Bean
	public InternalResourceViewResolver getIndexViewResolver() {
		InternalResourceViewResolver resolver = new InternalResourceViewResolver();
		resolver.setPrefix("/pages/");
		resolver.setSuffix(".jsp");
		resolver.setOrder(0);
		return resolver;
	}
	
	@Bean
	public InternalResourceViewResolver getCoreTagsViewResolver() {
		InternalResourceViewResolver resolver = new InternalResourceViewResolver();
		resolver.setPrefix("/pages/coretags/");
		resolver.setSuffix(".jsp");
		resolver.setOrder(0);
		return resolver;
	}

	
	@Bean
	public ViewResolver contentNegotiatingViewResolver(
			ContentNegotiationManager manager) {
		List<ViewResolver> resolvers = new ArrayList<ViewResolver>();
		resolvers.add(getIndexViewResolver());
		resolvers.add(getCoreTagsViewResolver());

		ContentNegotiatingViewResolver resolver = new ContentNegotiatingViewResolver();
		resolver.setViewResolvers(resolvers);
		resolver.setContentNegotiationManager(manager);
		return resolver;
	}
*/}
