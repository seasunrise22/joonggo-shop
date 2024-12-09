package com.lee.joonggo_shop.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class SimpleRestController {
	
	@GetMapping("/")
	public String hello() {
		return "index";
	}
}
