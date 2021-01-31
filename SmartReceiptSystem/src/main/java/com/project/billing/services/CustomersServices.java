package com.project.billing.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.billing.entities.Customers;
import com.project.billing.repositories.CustomersRepository;

@Service
public class CustomersServices {
	
	@Autowired
	CustomersRepository customersRepository;

	public List<Customers> getAllCustomers() {
		return (List<Customers>) customersRepository.findAll();

	}
	
	public String createCustomer(Customers customer) {
		String result = "";
		try {
			customersRepository.save(customer);
			result = "{ \"status\": 200, \"statusCode\": 1}";
		} catch (Exception e) {
			e.printStackTrace();
			result = "{ \"status\": 500, \"statusCode\": 2}";
			return result;
		}

		return result;

	}
}
