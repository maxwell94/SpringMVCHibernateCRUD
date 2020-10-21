package com.maxio.dao;

import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.maxio.entity.Customer;

@Repository
@Transactional
public class CustomerDAOImpl implements CustomerDAO {

	// need to inject the session factory
	@Autowired
	private SessionFactory sessionFactory;

	@Override
	public List<Customer> getCustomers() {

		// get the current hibernate session
		Session currentSession = sessionFactory.getCurrentSession();

		// create a query (HQL)
		Query<Customer> theQuery = currentSession.createQuery("from Customer", Customer.class);

		// execute query and get result list
		List<Customer> customers = theQuery.getResultList();

		// return the results
		return customers;
	}

	@Override
	public void saveCustomer(Customer customer) {

		Session currentSession = sessionFactory.getCurrentSession();
		currentSession.saveOrUpdate(customer);
	}

	public void updateCustomer(int customerId) {
		Session currentSession = sessionFactory.getCurrentSession();
	}

	public Customer getCustomer(int customerId) {

		Session currentSession = sessionFactory.getCurrentSession();
		Customer customer = currentSession.get(Customer.class, customerId);

		return customer;
	}

	public void deleteCustomer(Customer customer) {

		Session currentSession = sessionFactory.getCurrentSession();
		currentSession.delete(customer);
	}

}
