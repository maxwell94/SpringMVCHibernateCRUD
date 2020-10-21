package com.maxio.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.maxio.entity.Customer;
import com.maxio.service.CustomerService;

@Controller
@RequestMapping("/customer")
public class CustomerController {

	// need to inject the customer service
	@Autowired
	private CustomerService customerService;

	@GetMapping("/list")
	public String listCustomers(Model customerModel) {

		// get the customers from the DAO
		List<Customer> customers = customerService.getCustomers();

		// Add the customers to the model
		customerModel.addAttribute("customers", customers);

		return "list-customers";
	}

	@PostMapping("/saveNewCustomer")
	public String saveNewCustomer(@ModelAttribute("customer") Customer customer) {

		customerService.saveCustomer(customer);
		return "redirect:/customer/list";
	}

	@GetMapping("/showFormNewCustomer")
	public String showFormNewCustomer(Model customerModel) {

		Customer customer = new Customer();
		customerModel.addAttribute("customer", customer);

		return "new-customer";
	}

	@GetMapping("/showFormForUpdate")
	public String showFormForUpdate(@RequestParam("customerId") int customerId, Model customerModel) {

		Customer customer = customerService.getCustomer(customerId);
		customerModel.addAttribute("customer", customer);

		return "new-customer";
	}

	@GetMapping("/deleteUser")
	public String showFormForDelete(@RequestParam("customerId") int customerId, Model customerModel) {

		Customer customer = customerService.getCustomer(customerId);
		customerModel.addAttribute("customer", customer);

		// j'appele mon service pour effacer le customer
		customerService.deleteCustomer(customer);
		return "redirect:/customer/list";
	}

}
