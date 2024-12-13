package com.lee.joonggo_shop;

import org.modelmapper.ModelMapper;
import org.modelmapper.config.Configuration;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.Bean;
import org.springframework.web.client.RestTemplate;

@SpringBootApplication
public class JoonggoShopApplication {

	public static void main(String[] args) {
		SpringApplication.run(JoonggoShopApplication.class, args);
	}
	
	@Bean
	public ModelMapper modelMapper() {
		ModelMapper modelMapper = new ModelMapper();
		modelMapper
		.getConfiguration()
		.setFieldAccessLevel(Configuration.AccessLevel.PRIVATE)
		.setFieldMatchingEnabled(true);
		return modelMapper;
	}
	
	@Bean public RestTemplate restTemplate() { 
		return new RestTemplate(); 
		}
}
