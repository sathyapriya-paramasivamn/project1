package com.niit.ShoppingCartBackend.DAO;

import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.niit.ShoppingCartBackend.Model.Supplier;
@Repository("SupplierDAO")

public class SupplierDAOImpl implements SupplierDAO {
	@Autowired
	private SessionFactory sessionFactory;

	public SupplierDAOImpl(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}
	@Transactional
	public List<Supplier> list() {
		@SuppressWarnings("unchecked")
		List<Supplier> listSupplier = (List<Supplier>) sessionFactory.getCurrentSession().createCriteria(Supplier.class)
				.setResultTransformer(Criteria.DISTINCT_ROOT_ENTITY).list();
		return listSupplier;
		
	}
	@Transactional
	public Supplier get(String supplierid) {
		String hql = "from Supplier where Supplierid ='" + supplierid + "'";
		Query query = (Query) sessionFactory.getCurrentSession().createQuery(hql);
		@SuppressWarnings("unchecked")
		List<Supplier> listSupplier = (List<Supplier>) (query).list();

		if (listSupplier != null && !listSupplier.isEmpty()) {
			return listSupplier.get(0);
			}
		return null;
	}
	@Transactional
	public void saveOrUpdate(Supplier supplierid) {
		sessionFactory.getCurrentSession().saveOrUpdate(supplierid);
		

	}
	@Transactional
	public void delete(String id) {
		Supplier supplierToDelete = new Supplier();
		supplierToDelete.setSupplierid(id);
		sessionFactory.getCurrentSession().delete(supplierToDelete);


	}

}
