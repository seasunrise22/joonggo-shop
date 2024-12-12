package com.lee.joonggo_shop.dto;

public class ProductDto {
	private Long id; // 중고 상품 번호(식별자)
	private String name; // 중고 상품 이름
	private String description; // 중고 상품 설명
	private Integer price; // 중고 상품 가격
	
	public Long getId() {
		return id;
	}
	
	public String getName() {
		return name;
	}
	
	public String getDescription() {
		return description;
	}
	
	public Integer getPrice() {
		return price;
	}	
}
