package com.jbk.ProductManagement_MVC.dao;


import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.jbk.ProductManagement_MVC.entity.Product;

@Repository
public class ProductDaoImpl implements ProductDao {

	@Autowired
	private SessionFactory factory;

	@Override
	public boolean addProduct(Product product) {
		Session session = factory.openSession();
		Product pdct = session.get(Product.class, product.getProductname());
		Transaction transaction = session.beginTransaction();
		boolean isAdded = false;
		try {
			if (pdct == null) {
				session.save(product);
				transaction.commit();
				isAdded = true;
			} 
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
              session.close();
		}
		return isAdded;
	}

	@Override
	public List<Product> productList() {
		Session session=factory.openSession();
		List<Product> listProduct=null;
		try {
			listProduct=session.createCriteria(Product.class).list();
			
			return listProduct;
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			session.close();
		}
		return null;
	}

}
