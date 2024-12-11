package com.lee.joonggo_shop.entity;

/*
 * 중고 상품 클래스
 * */
public class Product {
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
