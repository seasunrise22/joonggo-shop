package com.lee.joonggo_shop.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import com.lee.joonggo_shop.dto.ProductDto;
import com.lee.joonggo_shop.service.ProductService;

@RestController
public class ProductRestController {
	
	private ProductService productService;
	
	@Autowired
	public ProductRestController(ProductService productService) {
		this.productService = productService;
	}

	@PostMapping("/products")
	public ProductDto createProduct(@RequestBody ProductDto productDto) {
		return productService.add(productDto);
	}
}
