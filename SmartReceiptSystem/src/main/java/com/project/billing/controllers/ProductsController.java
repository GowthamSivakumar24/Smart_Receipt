package com.project.billing.controllers;


import java.io.IOException;
import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
//import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.project.billing.entities.Products;
import com.project.billing.services.ProductsServices;

@RestController
public class ProductsController {

	@Autowired
	private ProductsServices productsServices;

	Logger logger = LoggerFactory.getLogger(getClass());

	// GET Method to get all the Products
	@CrossOrigin
	@RequestMapping(value = "/allProducts", method = RequestMethod.GET)
	public List<Products> getAllProducts() {
		List<Products> allProducts = productsServices.getAllProducts();
		return allProducts;
	}

	// POST Method to create a new Product
	@CrossOrigin
	@PostMapping(value = "/createProduct", produces = MediaType.APPLICATION_JSON_VALUE)
	public String createProduct(@RequestBody Products products) throws IOException {
		String result = productsServices.createProduct(products);
		return result;
	}

}
