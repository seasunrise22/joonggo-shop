package com.lee.joonggo_shop.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.lee.joonggo_shop.repository.ProductRepository;

@Controller
public class ViewController {
	
	ProductRepository productRepository;
	
	@Autowired
	public ViewController(ProductRepository productRepository) {
		this.productRepository = productRepository;
	}

	@GetMapping("/")
	public String index(Model model) {
		model.addAttribute("productList", productRepository.findAll());
		return "index";
	}
}
