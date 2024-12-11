package com.lee.joonggo_shop.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.lee.joonggo_shop.entity.Product;
import com.lee.joonggo_shop.repository.ProductRepository;

@Service
public class ProductService {
	
	private ProductRepository productRepository;

	@Autowired
	public ProductService(ProductRepository productRepository) {
		this.productRepository = productRepository;
	}
	
	public Product add(Product product) {
		Product savedProduct = productRepository.add(product);
		return product;
	}
}
