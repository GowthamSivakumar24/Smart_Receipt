package com.project.billing.controllers;

import com.project.billing.entities.Customers;
import com.project.billing.services.CustomersServices;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
public class CustomersController {

	@Autowired
	private CustomersServices customersServices;

	Logger logger = LoggerFactory.getLogger(getClass());
	
	

	// GET METHOD to get all the Customers
	@CrossOrigin
	@RequestMapping(value = "/allCustomers", method = RequestMethod.GET)
	public List<Customers> getAllCustomers() {
		//System.out.println("hello all customers");
		List<Customers> allCustomers = customersServices.getAllCustomers();
		return allCustomers;
	}

	// POST METHOD to create a new Customer
	@CrossOrigin
	@RequestMapping(value = "/createCustomer", method = RequestMethod.POST)
	public String createCustomer(@RequestBody Customers customer) {

		String result = customersServices.createCustomer(customer);
		return result;
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
}
