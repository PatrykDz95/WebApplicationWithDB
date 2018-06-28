package com.luv2code.springdemo.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.luv2code.springdemo.dao.ICustomerDAO;
import com.luv2code.springdemo.entity.Customer;

@Controller
@RequestMapping("/customer")
public class CustomerController {
	
	//need inject the dao intro the controller
	@Autowired
	private ICustomerDAO customerDAO;

	@RequestMapping("/list")
	public String listCustomer(Model theModel) {
		
		//get customers from dao
		List<Customer> theCustomers = customerDAO.getCustomers();
		
		//add the customers to the model
		theModel.addAttribute("customers", theCustomers);
		
		return "list-customers";
	}
	
}
