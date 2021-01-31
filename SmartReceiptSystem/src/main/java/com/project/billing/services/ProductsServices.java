package com.project.billing.services;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.billing.entities.Products;
import com.project.billing.repositories.ProductsRepository;

@Service
public class ProductsServices {

	@Autowired
	ProductsRepository productsRepository;

	public List<Products> getAllProducts() {
		return (List<Products>) productsRepository.findAll();

	}

	public String createProduct(Products products) {
		String result = "";
		try {
			productsRepository.save(products);
			result = "{ \"status\": 200, \"statusCode\": 1}";
		} catch (Exception e) {
			result = "{ \"status\": 404, \"statusCode\": 2}";
			e.printStackTrace();
			return result;
		}
		return result;
	}

}
