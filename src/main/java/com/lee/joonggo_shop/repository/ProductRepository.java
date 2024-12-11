package com.lee.joonggo_shop.repository;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Repository;

import com.lee.joonggo_shop.entity.Product;

@Repository
public class ProductRepository {

	private List<Product> products = new ArrayList<>();
	
	public Product add(Product product) {
		products.add(product);
		return product;
	}	
}
