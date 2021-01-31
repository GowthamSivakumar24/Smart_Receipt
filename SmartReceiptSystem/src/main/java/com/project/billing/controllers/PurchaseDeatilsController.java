package com.project.billing.controllers;


import com.project.billing.services.PurchaseDetailsServices;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.project.billing.dto.CreateBillDTO;

@Controller
public class PurchaseDeatilsController {

	@Autowired
	private PurchaseDetailsServices purchaseDetailsServices;

	// POST Method to create a new Bill
	@CrossOrigin
	@RequestMapping(value = "/createBill", method = RequestMethod.POST)
	public String createBill(@RequestBody CreateBillDTO bill) {
		String result = purchaseDetailsServices.createBill(bill);
		return result;
	}
	
	@GetMapping("/mobileshop")
	 public String MobileShop(){
        return "mobileshop";
    }

}
