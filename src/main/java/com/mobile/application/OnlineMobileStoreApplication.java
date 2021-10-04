package com.mobile.application;

import java.util.concurrent.TimeUnit;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.http.CacheControl;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

@SpringBootApplication

public class OnlineMobileStoreApplication implements WebMvcConfigurer {

	public static void main(String[] args) {
		SpringApplication.run(OnlineMobileStoreApplication.class, args);
	}
	@Override
	public void addResourceHandlers(ResourceHandlerRegistry registry) {
	// Register resource handler for images
	registry.addResourceHandler("/Images/**").addResourceLocations("/WEB-INF/view/Images/")
	.setCacheControl(CacheControl.maxAge(2, TimeUnit.HOURS).cachePublic());
	}
	}
	

