package com.lee.joonggo_shop.controller;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.client.RestTemplate;

import com.lee.joonggo_shop.dto.ProductDto;
import com.lee.joonggo_shop.service.ProductService;

@Controller
public class ViewController {

	ProductService productService;
	RestTemplate restTemplate;

	public ViewController(ProductService productService, RestTemplate restTemplate) {
		this.productService = productService;
		this.restTemplate = restTemplate;
	}

	@GetMapping("/")
	public String index(Model model) {
		String url = "http://localhost:8080/allProducts";
		List<ProductDto> productList = restTemplate.getForObject(url, List.class); // 타입안정성 때문에 ParameterizedTypeReference 사용 권장
		model.addAttribute("productList", productList);
		return "index";
	}

// 서비스 통해 제품 목록 받아오는 방식. 위는 좀 더 Restful하게 바꿔 본 것.
//	@GetMapping("/")
//	public String index(Model model) {
//		model.addAttribute("productList", productService.findAll());
//		return "index";
//	}
}
