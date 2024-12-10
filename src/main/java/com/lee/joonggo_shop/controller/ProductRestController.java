package com.lee.joonggo_shop.controller;

import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import com.lee.joonggo_shop.entity.Product;

@RestController
public class ProductRestController {
	
	@PostMapping("/products")
	public Product createProduct(@RequestBody Product product) {
		// Product를 생성하고 리스트에 넣는 작업이 필요함.
		
		return product;
	}
}
