package com.lee.joonggo_shop.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
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

	@PostMapping("/createProducts")
	public ProductDto createProduct(@RequestBody ProductDto productDto) {
		return productService.add(productDto);
	}
	
	@GetMapping("/allProducts")
	public List<ProductDto> findAllProduct() {
		return productService.findAll();
	}
}
