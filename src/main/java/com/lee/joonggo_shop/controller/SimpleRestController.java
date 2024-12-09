package com.lee.joonggo_shop.controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class SimpleRestController {
	
	@RequestMapping("/")
	public String hello() {
		return "Hello";
	}
}
