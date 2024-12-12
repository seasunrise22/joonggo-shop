package com.lee.joonggo_shop.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.lee.joonggo_shop.dto.ProductDto;
import com.lee.joonggo_shop.entity.Product;
import com.lee.joonggo_shop.repository.ProductRepository;

@Service
public class ProductService {
	
	private ProductRepository productRepository;

	@Autowired
	public ProductService(ProductRepository productRepository) {
		this.productRepository = productRepository;
	}
	
	public ProductDto add(ProductDto productDto) {
		// 1. ProductDto를 Product로 변환하는 코드
		Product product = ??;
		
		// 2. 리포지토리를 호출하는 코드
		Product savedProduct = productRepository.add(product);	
		
		// 3. Product를 ProductDto로 변환하는 코드
		ProductDto savedProductDto = ??;
		
		// 4. DTO를 반환하는 코드
		return savedProductDto;			
	}
}
