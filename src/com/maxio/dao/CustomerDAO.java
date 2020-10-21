package com.maxio.dao;

import java.util.List;

import com.maxio.entity.Customer;

public interface CustomerDAO {

	public List<Customer> getCustomers();

	public void saveCustomer(Customer customer);

	public void updateCustomer(int customerId);

	public Customer getCustomer(int customerId);

	public void deleteCustomer(Customer customer);

}
