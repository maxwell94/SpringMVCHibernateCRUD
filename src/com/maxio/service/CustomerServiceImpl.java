package com.maxio.service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.maxio.dao.CustomerDAO;
import com.maxio.entity.Customer;

@Service
public class CustomerServiceImpl implements CustomerService {

	// need to inject customer DAO
	@Autowired
	private CustomerDAO customerDAO;

	@Override
	@Transactional
	public List<Customer> getCustomers() {

		return customerDAO.getCustomers();
	}

	public void saveCustomer(Customer customer) {

		customerDAO.saveCustomer(customer);

	}

	public void updateCustomer(int id) {

	}

	@Override
	public Customer getCustomer(int customerId) {

		return customerDAO.getCustomer(customerId);
	}

	@Override
	public void deleteCustomer(Customer customer) {
		customerDAO.deleteCustomer(customer);
	}

}
