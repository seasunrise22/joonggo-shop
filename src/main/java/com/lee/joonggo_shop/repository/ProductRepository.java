package com.lee.joonggo_shop.repository;

import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.atomic.AtomicLong;

import org.springframework.stereotype.Repository;

import com.lee.joonggo_shop.entity.Product;

@Repository
public class ProductRepository {

	private List<Product> products = new ArrayList<>();
	private AtomicLong sequence = new AtomicLong(1L);
	
	public Product add(Product product) {
		product.setId(sequence.getAndAdd(1L));
		
		products.add(product);
		return product;
	}	
	
	public List<Product> findAll() {
		return products;
	}
}
