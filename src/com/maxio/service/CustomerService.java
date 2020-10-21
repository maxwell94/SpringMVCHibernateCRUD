package com.maxio.service;

import java.util.List;

import com.maxio.entity.Customer;

public interface CustomerService {

	public List<Customer> getCustomers();

	public void saveCustomer(Customer customer);

	public void updateCustomer(int id);

	public Customer getCustomer(int customerId);

	public void deleteCustomer(Customer customer);

}
