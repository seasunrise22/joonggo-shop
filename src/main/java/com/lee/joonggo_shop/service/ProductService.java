package com.lee.joonggo_shop.service;

import java.util.List;
import java.util.stream.Collectors;

import org.modelmapper.ModelMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.lee.joonggo_shop.dto.ProductDto;
import com.lee.joonggo_shop.entity.Product;
import com.lee.joonggo_shop.repository.ProductRepository;

@Service
public class ProductService {
	
	private ProductRepository productRepository;
	private ModelMapper modelMapper;

	@Autowired
	public ProductService(ProductRepository productRepository, ModelMapper modelMapper) {
		this.productRepository = productRepository;
		this.modelMapper = modelMapper;
	}
	
	public ProductDto add(ProductDto productDto) {
		// 1. ProductDto를 Product로 변환하는 코드
		Product product = modelMapper.map(productDto, Product.class);
		
		// 2. 리포지토리를 호출하는 코드
		Product savedProduct = productRepository.add(product);	
		
		// 3. Product를 ProductDto로 변환하는 코드
		ProductDto savedProductDto = modelMapper.map(savedProduct, ProductDto.class);
		
		// 4. DTO를 반환하는 코드
		return savedProductDto;			
	}
	
	public List<ProductDto> findAll() {
		List<Product> products = productRepository.findAll();
		
		List<ProductDto> productDtos = products.stream()
				.map(product -> modelMapper.map(product, ProductDto.class))
				.collect(Collectors.toList());
		
		return productDtos; 
	}

//	public ProductDto findById(Long id) {
//		Product product = 
//		return null;
//	}
}
